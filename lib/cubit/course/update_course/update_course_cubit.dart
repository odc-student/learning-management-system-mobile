part of 'package:osltestcubit/variable/imports.dart';

class UpdateCourseDataCubit extends Cubit<UpdateCourseDataState> {
  final UpdateCourseDataRepository _repository;

  UpdateCourseDataCubit(this._repository) : super(InitUpdateCourseDataState());

  Future<void> update(String id, title, value) async {
    try {
      emit(LoadingUpdateCourseDataState());
      final isUpdated = await _repository.update(id, title, value);
      emit(ResponseUpdateCourseDataState(isUpdated));
    } catch (e) {
      emit(ErrorUpdateCourseDataState(e.toString()));
    }
  }
}
