
part of 'package:osltestcubit/variable/imports.dart';

abstract class SprintsState{}

class InitSprintsState extends SprintsState{}
class LoadingSprintsState extends SprintsState{}
class ErrorSprintsState extends SprintsState{
  final String message;
  ErrorSprintsState(this.message);
}
class ResponseSprintsState extends SprintsState{
  final Sprints sprints;
  ResponseSprintsState(this.sprints);
}