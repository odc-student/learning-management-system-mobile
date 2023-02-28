
part of 'package:osltestcubit/Variable/imports.dart';

abstract class CourseState{}
class InitCourseState extends CourseState{}

class LoadingCourseState extends CourseState{}

class ErrorCourseState extends CourseState{
  final String message;
  ErrorCourseState(this.message);
}

class ResponseCourseState extends CourseState{
  final Courses cours;
  ResponseCourseState(this.cours);
}