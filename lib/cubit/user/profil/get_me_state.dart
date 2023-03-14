part of 'package:osltestcubit/variable/imports.dart';

abstract class UserDataState {}

class InitUserDataState extends UserDataState {}

class LoadingUserDataState extends UserDataState {}

class ErrorUserDataState extends UserDataState {
  final String message;

  ErrorUserDataState(this.message);
}

class ResponseUserDataState extends UserDataState {
  final UserSuccess user;

  ResponseUserDataState(this.user);
}
