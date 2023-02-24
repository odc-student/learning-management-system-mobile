part of 'package:osltestcubit/Variable/imports.dart';

abstract class CourseDataState{}
class InitCourseDataState extends CourseDataState{}

class LoadingCourseDataState extends CourseDataState{}

class ErrorCourseDataState extends CourseDataState{
  final String message;
  ErrorCourseDataState(this.message);
}

class ResponseCourseDataState extends CourseDataState{
  final Courseattribute? cours;
  ResponseCourseDataState(this.cours);
}

