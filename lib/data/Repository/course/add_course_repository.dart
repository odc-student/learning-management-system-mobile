

part of 'package:osltestcubit/Variable/imports.dart';
class AddCourseRepository{
  static const url=urlCourse;
  Future<dynamic> add(String titre,description,)async{

    final uri =Uri.parse(url);

    final response = await http.post(
        uri,
        body: jsonEncode({
          'titre':titre,
          'description': description,
          'is_visible': 0,
          'listSprint':[],
        }));

    if(response.statusCode==200){

      return "";
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}