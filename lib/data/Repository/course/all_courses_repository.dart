part of 'package:osltestcubit/variable/imports.dart';

class CourseRepository {
  static const url = urlCourse;

  Future<Courses> getAll() async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = Courses.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
