import 'package:bloc/bloc.dart';

class NavigatonCubit extends Cubit<int> {
  NavigatonCubit() : super(0);

  void changeTap(int index) {
    emit(index);
  }
}
