part of 'package:osltestcubit/variable/imports.dart';

class UpdateSprintRepository {
  static const url = urlCourse;

  Future<bool> update(String idCourse, idSprint, String title, value) async {
    final uri = Uri.parse('$url/$idCourse/sprint/$idSprint');
    final response = await http.put(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        title: value,
      }),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
