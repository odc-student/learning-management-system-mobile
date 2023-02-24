

abstract class UpdateCourseDataState{}
class InitUpdateCourseDataState extends UpdateCourseDataState{}

class LoadingUpdateCourseDataState extends UpdateCourseDataState{}

class ErrorUpdateCourseDataState extends UpdateCourseDataState{
  final String message;
  ErrorUpdateCourseDataState(this.message);
}

class ResponseUpdateCourseDataState extends UpdateCourseDataState{
  final bool isupdated;
  ResponseUpdateCourseDataState(this.isupdated);
}