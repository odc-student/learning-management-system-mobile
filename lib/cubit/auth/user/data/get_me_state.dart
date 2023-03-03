
part of 'package:osltestcubit/variable/imports.dart';

abstract class UserDataSatate{}

class InitUserDataSatate extends UserDataSatate{}
class LoadingUserDataSatate extends UserDataSatate{}

class ErrorUserDataSatate extends UserDataSatate{
  final String message;
  ErrorUserDataSatate(this.message);
}

class ResponseUserDataSatate extends UserDataSatate{
  final userSucc user;
  ResponseUserDataSatate(this.user);
}
