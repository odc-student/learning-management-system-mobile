part of 'package:osltestcubit/variable/imports.dart';

class AllUsersCubit extends Cubit<AllUserState> {
  final UsersRepository _repository;

  AllUsersCubit(this._repository) : super(InitAllUserState());

  Future<void> fetchAllUsers() async {
    try {
      emit(LoadingAllUserState());
      final allUsersResponse = await _repository.getAll();

      emit(ResponseAllUserState(allUsersResponse));
    } catch (e) {
      emit(ErrorAllUserState(e.toString()));
    }
  }
}
