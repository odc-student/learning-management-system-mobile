part of 'package:osltestcubit/variable/imports.dart';

class AllUsersCubit extends Cubit<AllUserState>{
  final UsersRepository _repository;
  AllUsersCubit(this._repository):super(InitAllUserState());

  Future<void> fetchAllUsers()async{
    try{
      emit(LoadingAllUserState());
      final response =await _repository.getAll();

      emit(ResponseAllUserState(response));
    }catch(e){
      emit(ErrorAllUserStatee(e.toString()));
    }
  }
}