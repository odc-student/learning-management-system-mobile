
part of 'package:osltestcubit/variable/imports.dart';
class CoursDataCubit extends Cubit<CourseDataState>{
  final DataCoursRepository _reposotory;
  CoursDataCubit(this._reposotory) : super(InitCourseDataState());


  Future<void> fetchOneCours()async{
    try{
      emit(LoadingCourseDataState());
      final response = await _reposotory.getone();

      emit(ResponseCourseDataState(response.data));

    }catch(e){
      emit(ErrorCourseDataState(e.toString()));
    }
  }

}
