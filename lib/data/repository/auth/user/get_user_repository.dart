part of 'package:osltestcubit/variable/imports.dart';

class UserRepository {
  static const url = urlUser;

  Future<UserData> getUser(String id) async {
    final uri = Uri.parse('$url/$id');
    final response = await http.get(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final result = UserData.fromJson(jsonDecode(response.body));

      return result;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
