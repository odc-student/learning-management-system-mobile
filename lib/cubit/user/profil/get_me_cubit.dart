part of 'package:osltestcubit/variable/imports.dart';

class MyUserCubit extends Cubit<UserDataState> {
  final GetMeRepository _repository;

  MyUserCubit(this._repository) : super(InitUserDataState());

  Future<void> fetchProfile() async {
    try {
      emit(LoadingUserDataState());
      final fetchMyProfileResponse = await _repository.fetchUser();
      emit(ResponseUserDataState(fetchMyProfileResponse));
    } catch (e) {
      emit(ErrorUserDataState(e.toString()));
    }
  }
}
