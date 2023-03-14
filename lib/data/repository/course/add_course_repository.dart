part of 'package:osltestcubit/variable/imports.dart';

class AddCourseRepository {
  static const url = urlCourse;

  Future<dynamic> add(
    String titre,
    description,
  ) async {
    try {
      final uri = Uri.parse(url);
      final addCourse = await http.post(uri,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({
            'titre': titre,
            'description': description,
          }));
      if (addCourse.statusCode == 200) {
        return AddCourseSuccessRes();
      } else {
        return AddCourseErrorRes();
      }
    } catch (e) {
      return AddCourseErrorRes();
    }
  }
}
