
part of 'package:osltestcubit/variable/imports.dart';

class SigninRepository {
  static const url = urlLogin;

  Future<dynamic> login(String email,String pwd) async {

    final uri = Uri.parse("$url");
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'email': email,
        'password':pwd,
      }),
    );
    if (response.statusCode == 200) {
final result = userRes.fromJson(jsonDecode(response.body));
      return result;
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}