part of 'package:osltestcubit/variable/imports.dart';


class UpdateUserRepository{
  static const url =apiUser;

  Future<bool> updateuser(String id, title, value)async{
    final uri = Uri.parse("$url/$id");
    final response =await http.put(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        '$title': value,
      }),
    );
    if(response.statusCode==200){
      return true;
    }
    else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}

