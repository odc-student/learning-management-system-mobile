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
      title: json['titre'],
      link: json['link'],
      isVisible: json['is_visible'],
    );
  }
}

class Sprints {
  final bool success;
  final List<SprintData> sprint;

  Sprints({
    required this.success,
    required this.sprint,
  });

  factory Sprints.fromJson(json) {
    return Sprints(
        success: json['success'],
        sprint: List<SprintData>.from((json['sprint'] as List<dynamic>)
            .map((e) => SprintData.fromJson(e))).toList());
  }
}
