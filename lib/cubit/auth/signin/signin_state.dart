

part of 'package:osltestcubit/variable/imports.dart';

abstract class SigninState{}
class InitSigninState extends SigninState{}

class LoadingSigninState extends SigninState{}

class ErrorSigninState extends SigninState{
  final String message;
  ErrorSigninState(this.message);
}

class ResponseSigninState extends SigninState{
  final userRes user;

  ResponseSigninState(this.user);
}