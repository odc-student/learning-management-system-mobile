

part of 'package:osltestcubit/Variable/imports.dart';

class DataCoursRepository {
  static const url = urlSprint;

  Future<CourseDetails> getone() async {
//Todo: get course id
    final uri = Uri.parse("$url/63f4e4a91bec406d5442ff99");
    final response = await http.get(uri);
    if (response.statusCode == 200) {

      final result = CourseDetails.fromJson(jsonDecode(response.body));

      return result ;
    }else{
      throw "Something went wrong code ${response.statusCode}";
    }
  }
}
//Todo: change api code or add new model to get course Data
class CourseDetails {
  bool? success;
  Courseattribute? data;

  CourseDetails({this.success, this.data});

  CourseDetails.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Courseattribute.fromJson(json['data']) : null;
  }
}


