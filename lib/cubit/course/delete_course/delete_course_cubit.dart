part of 'package:osltestcubit/variable/imports.dart';

class DeletecourseCubit extends Cubit<DeleteCourseState> {
  final DeleteCoursRepository _DeleteCoursRepository;

  DeletecourseCubit(this._DeleteCoursRepository) : super(InitDeleteCourseState());

  Future<void> delete(String id) async {
    emit(LoadingDeleteCourseState());
    try {
      final isDeleted = await _DeleteCoursRepository.delete(id);
      if (isDeleted) {
        emit(ResponseDeleteCourseState(true));
      } else {
        emit(ErrorDeleteCourseState('Failed to delete data.'));
      }
    } catch (e) {
      emit(ErrorDeleteCourseState(e.toString()));
    }
  }
}
