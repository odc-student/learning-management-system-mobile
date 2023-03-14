
abstract class AddCourseState{}
class InitAddCourseState extends AddCourseState{}
class LoadingAddCourseState extends AddCourseState{}

class ErrorAddCourseState extends AddCourseState{
  final String message;
  ErrorAddCourseState(this.message);
}

class ResponseAddCourseState extends AddCourseState{
  final dynamic isAdded;
  ResponseAddCourseState(this.isAdded);
}
