part of 'package:osltestcubit/variable/imports.dart';

class DeleteCourseCubit extends Cubit<DeleteCourseState> {
  final DeleteCourseRepository _deleteCoursRepository;

  DeleteCourseCubit(this._deleteCoursRepository)
      : super(InitDeleteCourseState());

  Future<void> delete(String id) async {
    emit(LoadingDeleteCourseState());
    try {
      final isDeleted = await _deleteCoursRepository.delete(id);
      if (isDeleted) {
        emit(ResponseDeleteCourseState(true));
      } else {
        emit(ErrorDeleteCourseState('Failed to delete course.'));
      }
    } catch (e) {
      emit(ErrorDeleteCourseState(e.toString()));
    }
  }
}
