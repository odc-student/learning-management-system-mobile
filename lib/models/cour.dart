class Courseattribute {
  String? id;
  String? title;
  String? description;
  num? is_visible;
  List? list=[];

  Courseattribute({
    this.id,
    this.title,
    this.description,
    this.is_visible,
    this.list,
  });

  factory Courseattribute.fromJson(dynamic json) {
    return Courseattribute(
      id: json['_id'] as String,
      title: json['titre'] as String,
      description: json['description'] as String,
      is_visible: json['is_visible'] as num,
      list: json['listSprint'] as List,
    );
  }
}

class Courses {
  final bool success;

  final List<Courseattribute> course;

  Courses({required this.success, required this.course});

  factory Courses.fromJson(json) {
    return Courses(
        success: json['success'],
        course: List<Courseattribute>.from((json['course'] as List<dynamic>)
            .map((e) => Courseattribute.fromJson(e))).toList());
  }
}
