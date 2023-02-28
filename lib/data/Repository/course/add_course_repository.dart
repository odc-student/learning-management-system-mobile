

part of 'package:osltestcubit/Variable/imports.dart';
class AddCourseRepository{
  static const url=urlCourse;
  Future<dynamic> add(String titre,description,)async{
try{
    final uri =Uri.parse(url);

    final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'titre':titre,
          'description': description,
          'is_visible': 0,
          'listSprint':[],
        }));print(response.body);
    if(response.statusCode==200){

      return AddCourseSuccessRes();
    }else{
      return AddCourseErrorRes();
    }
  }catch(e){
  print(e);
}}
}