import 'package:todo_app_c9_sun_4pm/core/utils/exctract_date.dart';

class TaskModel {
  String? id;
  String title;
  String description;
  DateTime dateTime;
  bool isDone;

  TaskModel({
    this.id,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.isDone,
  });

  //
  // TaskModel.fromFirestore(Map<String, dynamic> json)
  //     : this(
  //         id: json["id"],
  //         title: json["title"],
  //         description: json["description"],
  //         dateTime: DateTime.fromMillisecondsSinceEpoch(json["dateTime"]),
  //         isDone: json["isDone"],
  //       );

  factory TaskModel.fromFirestore(Map<String, dynamic> json) {
    return TaskModel(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      dateTime: DateTime.fromMillisecondsSinceEpoch(json["dateTime"]),
      isDone: json["isDone"],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "dateTime": ExtractDate.extractDate(dateTime).millisecondsSinceEpoch,
      "isDone": isDone,
    };
  }
}
