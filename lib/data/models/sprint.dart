class SprintData {
  String? id;
  String? title;
  String? link;
  bool? isVisible;

  SprintData({
    this.id,
    this.title,
    this.link,
    this.isVisible,
  });

  factory SprintData.fromJson(dynamic json) {
    return SprintData(
      id: json['_id'] as String?,
      title: json['titresprint'],
      link: json['link'],
      isVisible: json['sprint_is_visible'],
    );
  }
}

class Sprints {
  final List<SprintData> sprint;

  Sprints({
    required this.sprint,
  });

  factory Sprints.fromJson(json) {
    return Sprints(
        sprint: List<SprintData>.from((json['listSprint'] as List<dynamic>)
            .map((e) => SprintData.fromJson(e))).toList());
  }
}
