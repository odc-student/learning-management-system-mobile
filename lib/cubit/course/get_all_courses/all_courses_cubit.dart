part of 'package:osltestcubit/Variable/imports.dart';


class CoursCubit extends Cubit<CourseState>{
  final CoursRepository _reposotory;
  CoursCubit(this._reposotory) : super(InitCourseState());


  Future<void> fetchCours()async{
    try{
      emit(LoadingCourseState());
      final response = await _reposotory.getAll();

      emit(ResponseCourseState(response));

    }catch(e){
      emit(ErrorCourseState(e.toString()));
    }
  }

}