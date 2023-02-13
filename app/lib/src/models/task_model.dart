class TaskModel {
  late final String title;
  final String description;
  final String? dateAndTime;
  bool isDone;

  TaskModel({
    required this.title,
    required this.description,
    this.dateAndTime,
    this.isDone = false,
  });
}
