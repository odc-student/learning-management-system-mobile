part of 'package:osltestcubit/variable/imports.dart';


class DeleteSprintCubit extends Cubit<DeleteSprintState> {
  final DeleteSprintRepository _deleteCourseRepository;

  DeleteSprintCubit(this._deleteCourseRepository)
      : super(InitDeleteSprintState());

  Future<void> delete(String idCourse,idSprint) async {
    emit(LoadingDeleteSprintState());
    try {
      final isDeleted = await _deleteCourseRepository.delete(idCourse,idSprint);
      if (isDeleted) {
        emit(ResponseDeleteSprintState(true));
      } else {
        emit(ErrorDeleteSprintState('Failed to add Sprint.'));
      }
    } catch (e) {
      emit(ErrorDeleteSprintState(e.toString()));
    }
  }
}

