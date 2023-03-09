
abstract class DeleteUserState{}
class InitDeleteUserState extends DeleteUserState{}

class LoadingDeleteUserState extends DeleteUserState{}

class ErrorDeleteUserState extends DeleteUserState{
  final String message;
  ErrorDeleteUserState(this.message);
}
class ResponseDeleteUserState extends DeleteUserState{
  final bool isDeleted;
  ResponseDeleteUserState(this.isDeleted);
}
