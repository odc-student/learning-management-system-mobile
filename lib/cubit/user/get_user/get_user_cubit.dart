part of 'package:osltestcubit/variable/imports.dart';

class UserCubit extends Cubit<UserState>{
  final UserRepository _repository;
  UserCubit(this._repository):super(InitUserState());

  Future<void> fetchUser(String id)async{
    try{
      emit(LoadingUserState());
      final userResponse =await _repository.getUser(id);

      emit(ResponseUserState(userResponse));
    }catch(e){
      emit(ErrorUserState(e.toString()));
    }
  }
}