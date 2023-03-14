part of 'package:osltestcubit/variable/imports.dart';

class AddSprintCubit extends Cubit<AddSprintState> {
  final AddSprintRepository _addSprintRepository;

  AddSprintCubit(this._addSprintRepository) : super(InitAddSprintState());

  Future<void> add(String titre, link,idCourse) async {
    emit(LoadingAddSprintState());
    try {

      final addResponse = await _addSprintRepository.add(titre, link,idCourse);

      emit(ResponseAddSprintState(addResponse));
    } catch (e) {
      emit(ErrorAddSprintState(e.toString()));
    }
  }
}
