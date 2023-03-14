part of 'package:osltestcubit/variable/imports.dart';


class UpdateSprintCubit extends Cubit<UpdateSprintState> {
  final UpdateSprintRepository _repository;

  UpdateSprintCubit(this._repository) : super(InitUpdateSprintState());

  Future<void> update(String idCourse,idSprint, title, value) async {
    try {
      emit(LoadingUpdateSprintState());
      final isUpdated = await _repository.update(idCourse,idSprint, title, value);

      emit(ResponseUpdateSprintState(isUpdated));
    } catch (e) {
      emit(ErrorUpdateSprintState(e.toString()));
    }
  }
}
