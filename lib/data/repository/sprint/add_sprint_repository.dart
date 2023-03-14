part of 'package:osltestcubit/variable/imports.dart';

class AddSprintRepository {
  static const url = urlCourse;

  Future<dynamic> add(String title, link,idCourse) async {

      final uri = Uri.parse("$url/$idCourse/sprint");
      final addSprint = await http.put(uri, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
          body: jsonEncode({
            'titresprint': title,
            'link': link,
          }));
      if (addSprint.statusCode == 200) {
        return true;
      } else {
        throw "Something went wrong code ${addSprint.statusCode}";
      }
    }
  }