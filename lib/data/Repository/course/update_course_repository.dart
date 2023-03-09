part of 'package:osltestcubit/variable/imports.dart';

class UpdateCourseDataRepository {
  static const url = urlCourse;

  Future<bool> update(String id, title, value) async {
    final uri = Uri.parse("$url/$id");
    final response = await http.put(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        '$title': value,
      }),
    );
    if (response.statusCode == 200) {
      NavigatorService.instance.navigateToReplacement(HomeScreen());
      return true;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
