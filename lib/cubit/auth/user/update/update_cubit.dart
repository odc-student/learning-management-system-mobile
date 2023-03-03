part of 'package:osltestcubit/variable/imports.dart';


class UpdateUserDataCubit extends Cubit<UpdateUserDataState>{
  final UpdateUserRepository _reposotory;
  UpdateUserDataCubit(this._reposotory) : super(InitUpdateUserDataState());


  Future<void> UpdateUser(String id , title,value)async{
    try{
      emit(LoadingUpdateUserDataState());
      final response = await _reposotory.updateuser(id,title,value);
      if(response) {
        emit(ResponseUpdateUserDataState(true));
      }else{
        emit(ResponseUpdateUserDataState(false));
      }

    }catch(e){
      emit(ErrorUpdateUserDataState(e.toString()));
    }
  }

}