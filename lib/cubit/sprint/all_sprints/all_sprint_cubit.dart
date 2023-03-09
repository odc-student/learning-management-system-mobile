
part of 'package:osltestcubit/variable/imports.dart';

class SprintsCubit extends Cubit<SprintsState>{
  final SprintsRepository _repository;
  SprintsCubit(this._repository):super(InitSprintsState());

  Future<void> fetchSprint()async{
    try{
      emit(LoadingSprintsState());
      final allSprintsResponse =await _repository.getAll();
      emit(ResponseSprintsState(allSprintsResponse));

    }catch(e){
      emit(ErrorSprintsState(e.toString()));
    }
  }
}