part of 'package:osltestcubit/variable/imports.dart';

class DeleteUserRepository {
  static const url = apiUser;

  Future<bool> delete(String id) async {
    final uri = Uri.parse('$url/$id');
    final response = await http.delete(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
