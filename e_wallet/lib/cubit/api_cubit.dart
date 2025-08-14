import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_wallet/data/dummy.dart';
import 'package:e_wallet/model/data.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(Loadingstate());
  Dio dio = Dio();

  void fetchData() async {
    log("fetching data");
    try {
      // final response = await dio.get(
      //   "https://my.api.mockaroo.com/e_wallet.json?key=0c1e7960",
      // );
      // log(response.statusCode.toString());
      emit(LoadedState(dummy));
    } catch (e) {
      log(e.toString());
      emit(ErrorState());
    }
  }
}
