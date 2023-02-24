part of 'package:osltestcubit/Variable/imports.dart';

class AddCourseCubit extends Cubit<AddCourseState>{
  final AddCourseRepository _addCourseRepository;
  AddCourseCubit(this._addCourseRepository):super(InitAddCourseState());

  Future<void>add()async{
    emit(LoadingAddCourseState());
    try{
      final isAdd =await _addCourseRepository.add();
      if(isAdd){
        emit(ResponseAddCourseState(true));
      }else{
        emit(ErrorAddCourseState('Faild to add data.'));
      }
    }catch(e){
      emit(ErrorAddCourseState(e.toString()));
    }
  }
}