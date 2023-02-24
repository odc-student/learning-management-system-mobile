
part of 'package:osltestcubit/Variable/imports.dart';


class UpdateCourseDataCubit extends Cubit<UpdateCourseDataState>{
  final UpdateCourseDataRepository _reposotory;
  UpdateCourseDataCubit(this._reposotory) : super(InitUpdateCourseDataState());


  Future<void> Update(String id , title,value)async{
    try{
      emit(LoadingUpdateCourseDataState());
      final response = await _reposotory.update(id,title,value);
if(response) {
  emit(ResponseUpdateCourseDataState(true));
}else{
  emit(ResponseUpdateCourseDataState(false));
}

    }catch(e){
      emit(ErrorUpdateCourseDataState(e.toString()));
    }
  }

}