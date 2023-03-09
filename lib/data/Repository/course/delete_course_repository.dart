
part of 'package:osltestcubit/variable/imports.dart';
class DeleteCourseRepository {
  static const url = urlCourse;

  Future<bool> delete(String id) async {

    final uri = Uri.parse("$url/$id");
    final response = await http.delete(uri);
    if (response.statusCode == 200) {

      return true ;
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
