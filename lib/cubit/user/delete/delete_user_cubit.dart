part of 'package:osltestcubit/variable/imports.dart';


class DeleteUserCubit extends Cubit<DeleteUserState> {
  final DeleteUserRepository _repository;

  DeleteUserCubit(this._repository) : super(InitDeleteUserState());

  Future<void> delete(String id) async {
    emit(LoadingDeleteUserState());
    try {
      final isDeleted = await _repository.delete(id);
      if (isDeleted) {
        emit(ResponseDeleteUserState(true));
      } else {
        emit(ErrorDeleteUserState('Failed to delete data.'));
      }
    } catch (e) {
      emit(ErrorDeleteUserState(e.toString()));
    }
  }
}
