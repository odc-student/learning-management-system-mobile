part of 'package:osltestcubit/variable/imports.dart';

class UserCubit extends Cubit<UserDataSatate>{
  final GetMeRepository _repository;
  UserCubit(this._repository):super(InitUserDataSatate());


  Future<void> fetchuserData()async{
    try{
      emit(LoadingUserDataSatate());
      final response =await _repository.fetchuser();
      emit(ResponseUserDataSatate(response));

    }catch(e){
      emit(ErrorUserDataSatate(e.toString()));
    }
  }
}