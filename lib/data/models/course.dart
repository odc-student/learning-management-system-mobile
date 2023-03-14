class CourseAttribute {
  String? id;
  String? title;
  String? description;
  bool? isVisible;
  List? list = [];

  CourseAttribute({
    this.id,
    this.title,
    this.description,
    this.isVisible,
    this.list,
  });

  factory CourseAttribute.fromJson(dynamic json) {
    return CourseAttribute(
      id: json['_id'] as String?,
      title: json['titre'] as String?,
      description: json['description'] as String?,
      isVisible: json['is_visible'] as bool?,
      list: json['listSprint'] as List?,
    );
  }
}

class Courses {
  final bool success;

  final List<CourseAttribute> course;

  Courses({required this.success, required this.course});

  factory Courses.fromJson(json) {
    return Courses(
        success: json['success'],
        course: List<CourseAttribute>.from((json['course'] as List<dynamic>)
            .map((e) => CourseAttribute.fromJson(e))).toList());
  }
}

class AddCourseSuccessRes {
  AddCourseSuccessRes();

  factory AddCourseSuccessRes.fromJson(dynamic json) {
    return AddCourseSuccessRes();
  }
}

class AddCourseErrorRes {
  AddCourseErrorRes();

  factory AddCourseErrorRes.fromJson(dynamic json) {
    return AddCourseErrorRes();
  }
}
