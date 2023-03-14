part of 'package:osltestcubit/variable/imports.dart';

// Todo: remove it
class SignupCubit extends Cubit<SignupState>{
  final SignupRepository _repository;
  SignupCubit(this._repository): super(InitSignupState());

  Future<void> Signup(String name, email,date, pwd,photo)async{
    try{
      emit(LoadingSignupState());
      final response =await _repository.signUp(name, email, date, pwd, photo);
      emit(ResposeSignupState(response));

    }catch(e){
      emit(ErrorSignupState(e.toString()));
    }
  }
}