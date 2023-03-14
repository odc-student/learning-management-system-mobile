part of 'package:osltestcubit/variable/imports.dart';

class UpdateUserDataCubit extends Cubit<UpdateUserDataState> {
  final UpdateUserRepository _repository;

  UpdateUserDataCubit(this._repository) : super(InitUpdateUserDataState());

  Future<void> updateUser(String id, title, value) async {
    try {
      emit(LoadingUpdateUserDataState());
      final isUpdated = await _repository.updateUser(id, title, value);
      if (isUpdated) {
        emit(ResponseUpdateUserDataState(true));
      } else {
        emit(ResponseUpdateUserDataState(false));
      }
    } catch (e) {
      emit(ErrorUpdateUserDataState(e.toString()));
    }
  }
}
