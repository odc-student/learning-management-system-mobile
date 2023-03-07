
part of 'package:osltestcubit/variable/imports.dart';

abstract class AllUserState{}
class InitAllUserState extends AllUserState{}

class LoadingAllUserState extends AllUserState{}

class ErrorAllUserStatee extends AllUserState{
  final String message;
  ErrorAllUserStatee(this.message);
}

class ResponseAllUserState extends AllUserState{
  final alluserSucc user;
  ResponseAllUserState(this.user);
}