abstract class AddSprintState {}

class InitAddSprintState extends AddSprintState {}

class LoadingAddSprintState extends AddSprintState {}

class ErrorAddSprintState extends AddSprintState {
  final String message;

  ErrorAddSprintState(this.message);
}

class ResponseAddSprintState extends AddSprintState {
  final dynamic isAdded;

  ResponseAddSprintState(this.isAdded);
}
