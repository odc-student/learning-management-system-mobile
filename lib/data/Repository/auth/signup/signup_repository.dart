part of 'package:osltestcubit/variable/imports.dart';

class SignupRepository {
  static const url = urlSignup;

  Future<dynamic> Signup(String name, email,date, pwd,photo)async{
    final uri = Uri.parse("$url");
    final response =await http.post(uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'fullName':name,
        'email':email,
        'dateOfBirth':date,
        'password':pwd,
        'photo':photo,
      }),

    ); if (response.statusCode == 200){
      return true;
    }
    else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}