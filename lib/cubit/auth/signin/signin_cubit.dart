part of 'package:osltestcubit/variable/imports.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignInRepository _repository;

  SignInCubit(this._repository) : super(InitSignInState());

  Future<void> login(String email, password) async {
    try {
      emit(LoadingSignInState());
      final loginResponse = await _repository.login(email, password);
      emit(ResponseSignInState(loginResponse));
      NavigatorService.instance.navigateTo(HomeScreen());
    } catch (e) {
      emit(ErrorSignInState(e.toString()));
    }
  }
}
