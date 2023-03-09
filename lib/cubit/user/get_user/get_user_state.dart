
part of 'package:osltestcubit/variable/imports.dart';

abstract class UserState{}
class InitUserState extends UserState{}

class LoadingUserState extends UserState{}

class ErrorUserState extends UserState{
  final String message;
  ErrorUserState(this.message);
}

class ResponseUserState extends UserState{
  final userData user;
  ResponseUserState(this.user);
}