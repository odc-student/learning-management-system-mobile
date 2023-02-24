part of 'package:osltestcubit/Variable/imports.dart';

class AddCourseCubit extends Cubit<AddCourseState>{
  final AddCourseRepository _addCourseRepository;
  AddCourseCubit(this._addCourseRepository):super(InitAddCourseState());

  Future<void>add(String titre,description)async{
    emit(LoadingAddCourseState());
    try{
      final isAdd =await _addCourseRepository.add(titre,description);

        emit(ResponseAddCourseState(isAdd));

    }catch(e){
      emit(ErrorAddCourseState(e.toString()));
    }
  }
}