class NewTaskModel {
  final String title;
  final String description;
  final bool isDone;
  final String? dateAndTime;

  NewTaskModel({
    required this.title,
    required this.description,
    required this.isDone,
    this.dateAndTime,
  });
}
