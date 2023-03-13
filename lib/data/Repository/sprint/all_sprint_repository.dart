part of 'package:osltestcubit/variable/imports.dart';
//Todo:change it
class SprintsRepository {
  static const url = urlCourse;

  Future<Sprints> getAll(String id) async {
    final uri = Uri.parse("$url/$id");
    print(uri);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = Sprints.fromJson(jsonDecode(response.body));

      print('hire ${result}');
      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
