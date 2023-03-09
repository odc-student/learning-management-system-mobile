part of 'package:osltestcubit/variable/imports.dart';

class SprintsRepository {
  static const url = urlSprints;

  Future<Sprints> getAll() async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = Sprints.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
