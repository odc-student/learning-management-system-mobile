

// Todo: remove it
abstract class SignupState{}
class InitSignupState extends SignupState{}
class LoadingSignupState extends SignupState{}

class ErrorSignupState extends SignupState{
  final String message;
  ErrorSignupState(this.message);
}
class ResposeSignupState extends SignupState{
  final bool issignup;
  ResposeSignupState(this.issignup);
}

