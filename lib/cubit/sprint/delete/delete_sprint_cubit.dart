part of 'package:osltestcubit/variable/imports.dart';


class DeleteSprintCubit extends Cubit<DeleteSprintState> {
  final DeleteSprintRepository _deleteCoursRepository;

  DeleteSprintCubit(this._deleteCoursRepository)
      : super(InitDeleteSprintState());

  Future<void> delete(String idCourse,idSprint) async {
    emit(LoadingDeleteSprintState());
    try {
      final isDeleted = await _deleteCoursRepository.delete(idCourse,idSprint);
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

