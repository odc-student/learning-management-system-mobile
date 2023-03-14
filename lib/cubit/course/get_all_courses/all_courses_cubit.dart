part of 'package:osltestcubit/variable/imports.dart';

class CoursesCubit extends Cubit<CourseState> {
  final CourseRepository _repository;

  CoursesCubit(this._repository) : super(InitCourseState());

  Future<void> fetchCourses() async {
    try {
      emit(LoadingCourseState());
      final allCoursesResponse = await _repository.getAll();

      emit(ResponseCourseState(allCoursesResponse));
    } catch (e) {
      emit(ErrorCourseState(e.toString()));
    }
  }
}
