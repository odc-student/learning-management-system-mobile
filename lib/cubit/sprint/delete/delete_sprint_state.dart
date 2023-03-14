
abstract class DeleteSprintState{}
class InitDeleteSprintState extends DeleteSprintState{}

class LoadingDeleteSprintState extends DeleteSprintState{}

class ErrorDeleteSprintState extends DeleteSprintState{
  final String message;
  ErrorDeleteSprintState(this.message);
}
class ResponseDeleteSprintState extends DeleteSprintState{
  final bool isDeleted;
  ResponseDeleteSprintState(this.isDeleted);
}
