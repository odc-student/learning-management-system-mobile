abstract class UpdateSprintState {}

class InitUpdateSprintState extends UpdateSprintState {}

class LoadingUpdateSprintState extends UpdateSprintState {}

class ErrorUpdateSprintState extends UpdateSprintState {
  final String message;

  ErrorUpdateSprintState(this.message);
}

class ResponseUpdateSprintState extends UpdateSprintState {
  final bool isupdated;

  ResponseUpdateSprintState(this.isupdated);
}
