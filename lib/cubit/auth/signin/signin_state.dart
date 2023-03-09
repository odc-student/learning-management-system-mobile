

part of 'package:osltestcubit/variable/imports.dart';

abstract class SignInState{}
class InitSignInState extends SignInState{}

class LoadingSignInState extends SignInState{}

class ErrorSignInState extends SignInState{
  final String message;
  ErrorSignInState(this.message);
}

class ResponseSignInState extends SignInState{
  final userRes user;

  ResponseSignInState(this.user);
}