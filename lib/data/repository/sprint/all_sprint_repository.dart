part of 'package:osltestcubit/variable/imports.dart';

class SprintsRepository {
  static const url = urlCourse;

  Future<Sprints> getAll(String id) async {
    final uri = Uri.parse("$url/$id");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = Sprints.fromJson(jsonDecode(response.body));

      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
