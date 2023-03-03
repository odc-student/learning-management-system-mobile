

part of 'package:osltestcubit/Variable/imports.dart';
class AddCourseRepository{
  static const url=urlCourse;
  Future<bool> add()async{
    final uri =Uri.parse(url);
    final response =await http.post(uri);
    if(response.statusCode==200){
      return true;
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}