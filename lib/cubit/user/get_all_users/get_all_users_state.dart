part of 'package:osltestcubit/variable/imports.dart';

abstract class AllUserState {}

class InitAllUserState extends AllUserState {}

class LoadingAllUserState extends AllUserState {}

class ErrorAllUserState extends AllUserState {
  final String message;

  ErrorAllUserState(this.message);
}

class ResponseAllUserState extends AllUserState {
  final AllUserSuccess user;

  ResponseAllUserState(this.user);
}
