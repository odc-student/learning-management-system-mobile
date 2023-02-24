
part of 'package:osltestcubit/Variable/imports.dart';

class UpdateCourseDataRepository {
  static const url = urlCourse;

  Future<bool> update(String id , title,value) async {

    final uri = Uri.parse("$url/$id");
    final response = await http.put(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        '$title': value,
      }),
    );
    if (response.statusCode == 200) {



      return true ;
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}