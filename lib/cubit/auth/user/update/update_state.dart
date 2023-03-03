

abstract class UpdateUserDataState{}
class InitUpdateUserDataState extends UpdateUserDataState{}

class LoadingUpdateUserDataState extends UpdateUserDataState{}

class ErrorUpdateUserDataState extends UpdateUserDataState{
  final String message;
  ErrorUpdateUserDataState(this.message);
}

class ResponseUpdateUserDataState extends UpdateUserDataState{
  final bool isupdated;
  ResponseUpdateUserDataState(this.isupdated);
}