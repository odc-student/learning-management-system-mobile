
part of 'package:osltestcubit/variable/imports.dart';

class SigninCubit extends Cubit<SigninState>{
  final SigninRepository _reposotory;
  SigninCubit(this._reposotory) : super(InitSigninState());


  Future<void> Login(String email , pwd)async{
    try{
      emit(LoadingSigninState());
      final response = await _reposotory.login(email,pwd);
  emit(ResponseSigninState(response));
      NavigatorService.instance.navigateTo(OnborderListCourses());




    }catch(e){
      emit(ErrorSigninState(e.toString()));
    }
  }

}