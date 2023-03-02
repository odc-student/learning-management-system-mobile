
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

final userInstance = await SharedPreferences.getInstance();
await userInstance.setString('email', result.userattribute['email'].toString());
await userInstance.setString('id', result.userattribute['-id'].toString());
await userInstance.setString('fullName', result.userattribute['fullName'].toString());
useremail =userInstance.getString('email');
userfullname =userInstance.getString('fullName');
userId=userInstance.getString('id');
return result;
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}