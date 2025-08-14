part of 'api_cubit.dart';

sealed class ApiState {
  bool isfetched = false;
  late Data fetchedData;
}

final class Loadingstate extends ApiState {}

final class LoadedState extends ApiState {
  Map<String, dynamic> list;
  LoadedState(this.list) {
    isfetched = true;
    fetchedData = Data.fromJson(list);
  }
}

final class ErrorState extends ApiState {}
