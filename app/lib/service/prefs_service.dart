import 'dart:convert';

import 'package:app/service/interface_database.dart';
import 'package:app/src/controller/controller.dart';
import 'package:app/src/models/task_model.dart';

import 'package:app/utils/preference_keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService extends ChangeNotifier implements InterfaceDatabase {
  // Future loadTask(void Function() setState) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final data = prefs.getString(PreferenceKeys.savedTask);

  //   if (data != null) {
  //     final Iterable dataJson = jsonDecode(data);
  //     final List<TaskModel> taskItemTraversed =
  //         dataJson.map((e) => TaskModel.fromJson(e)).toList();
  //   }
  //   return setState;
  // }

  @override
  Future loadTask() async {
    final prefs = await SharedPreferences.getInstance();
    final controller = Controller();
    var task = prefs.getString(PreferenceKeys.savedTask);
    var taskMaps = jsonDecode(task!);
    List<dynamic> mockTaskList = controller.taskMock.taskList;

    mockTaskList = taskMaps;

    print(taskMaps);
    notifyListeners();

    // if (task != null) {
    //   final Map<String, dynamic> newTasks = jsonDecode(task);
    //   TaskModel(
    //     title: newTasks['title'],
    //     description: newTasks['description'],
    //     dateAndTime: newTasks['dateAndTime'],
    //     isDone: newTasks['isDone'],
    //   );
    //   // print(newTasks['title']);
    // }

    // Map<String, dynamic> newTasks = json.decode(salveeee!);
    // TaskModel taskModel = TaskModel.fromJson(newTasks);
  }

  @override
  Future saveTask(String taskList) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      PreferenceKeys.savedTask,
      taskList,
    );
  }
}
