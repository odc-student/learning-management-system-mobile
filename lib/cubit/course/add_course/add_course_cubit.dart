part of 'package:osltestcubit/variable/imports.dart';

class AddCourseCubit extends Cubit<AddCourseState> {
  final AddCourseRepository _addCourseRepository;

  AddCourseCubit(this._addCourseRepository) : super(InitAddCourseState());

  Future<void> add(String titre, description) async {
    emit(LoadingAddCourseState());
    try {

      final addResponse = await _addCourseRepository.add(titre, description);

      emit(ResponseAddCourseState(addResponse));
    } catch (e) {
      emit(ErrorAddCourseState(e.toString()));
    }
  }
}
