part of 'package:osltestcubit/variable/imports.dart';

class UsersRepository {
  static const url = apiUser;

  Future<allUserSuccess> getAll() async {
    final uri = Uri.parse(url);
    final response = await http.get(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final result = allUserSuccess.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
