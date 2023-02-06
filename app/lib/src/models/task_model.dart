

class TaskModel {
  late final String title;
  final String description;
  final bool isDone;
  final String? dateAndTime;
 

  TaskModel(
      {required this.title,
      required this.description,
      required this.isDone,
      this.dateAndTime,});
}
