import '../models/task_model.dart';

class TaskMock {
  List<TaskModel> taskList = [
    TaskModel(
      title: 'Review',
      description: 'Review as 18 horas',
      isDone: false,
    ),
    TaskModel(
      title: 'Afundar partidas',
      description: 'Pickar shaco jg na ranked as 19h',
      isDone: false,
    ),
    TaskModel(
      title: 'Voleizin de cria',
      description: 'volei com as poc as 20h',
      isDone: false,
    ),
    TaskModel(
      title: 'Lembrar de lembrar',
      description: 'lembrar que eu preciso lembrar de algo',
      isDone: false,
    ),
  ];
  
}
