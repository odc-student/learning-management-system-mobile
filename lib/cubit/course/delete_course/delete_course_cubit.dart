part of 'package:osltestcubit/variable/imports.dart';

class DeleteCourseCubit extends Cubit<DeleteCourseState> {
  final DeleteCourseRepository _deleteCourseRepository;

  DeleteCourseCubit(this._deleteCourseRepository)
      : super(InitDeleteCourseState());

  Future<void> delete(String id) async {
    emit(LoadingDeleteCourseState());
    try {
      final isDeleted = await _deleteCourseRepository.delete(id);
      if (isDeleted) {
        emit(ResponseDeleteCourseState(true));
      } else {
        emit(ErrorDeleteCourseState('Failed to add course.'));
      }
    } catch (e) {
      emit(ErrorDeleteCourseState(e.toString()));
    }
  }
}
