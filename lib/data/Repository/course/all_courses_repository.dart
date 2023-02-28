part of 'package:osltestcubit/Variable/imports.dart';

class CoursRepository {
  static const url = urlCourse;

  Future<CoursesRecord> getAll() async {
    final uri = Uri.parse("$url");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = CoursesRecord.fromJson(jsonDecode(response.body));

      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
