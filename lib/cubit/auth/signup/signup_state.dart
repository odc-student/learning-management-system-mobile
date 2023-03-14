

// Todo: remove it
abstract class SignupState{}
class InitSignupState extends SignupState{}
class LoadingSignupState extends SignupState{}

class ErrorSignupState extends SignupState{
  final String message;
  ErrorSignupState(this.message);
}
class ResponseSignupState extends SignupState{
  final bool isSignup;
  ResponseSignupState(this.isSignup);
}

