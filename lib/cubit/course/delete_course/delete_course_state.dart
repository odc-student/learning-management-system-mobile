
abstract class DeleteCourseState{}
class InitDeleteCourseState extends DeleteCourseState{}

class LoadingDeleteCourseState extends DeleteCourseState{}

class ErrorDeleteCourseState extends DeleteCourseState{
  final String message;
  ErrorDeleteCourseState(this.message);
}
class ResponseDeleteCourseState extends DeleteCourseState{
  final bool isDeleted;
  ResponseDeleteCourseState(this.isDeleted);
}
