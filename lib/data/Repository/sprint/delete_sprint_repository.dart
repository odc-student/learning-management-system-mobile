part of 'package:osltestcubit/variable/imports.dart';

class DeleteSprintRepository{
  static const url =urlCourse;

  Future<bool>delete(String idCourse, idSprint)async{
    final uri =Uri.parse("$url/$idCourse/sprint/$idSprint");
    final deleteSprint = await http.delete(uri);
    if(deleteSprint.statusCode==200){
      return true;
    }else{
      throw "Something went wrong code ${deleteSprint.statusCode}";
    }
  }
}
