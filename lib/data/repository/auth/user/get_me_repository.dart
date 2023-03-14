part of 'package:osltestcubit/variable/imports.dart';


class GetMeRepository{
static const url = urlCurrentUser;

Future<userSucc> fetchUser()async{
  final userInstance = await SharedPreferences.getInstance();
  token=userInstance.getString('token');
  final uri = Uri.parse(url);
  final response =await http.get(uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
  );
  if(response.statusCode==200){
    final result = userSucc.fromJson(jsonDecode(response.body));
    email = result.userattribute['email'];
    fullName = result.userattribute['fullName'];
    id =result.userattribute['_id'];
    dateB = result.userattribute['dateOfBirth'];
    PhoneN =result.userattribute['phoneNumber'];


    return result;
  }else{
    throw "Something went wrong code ${response.statusCode}";
  }
}
}
