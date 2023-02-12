import 'package:app/src/mocks/task_mock.dart';
import 'package:app/src/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../models/chat_filter_model.dart';

class Controller {
  final taskMock = TaskMock();

  final formKey = GlobalKey<FormState>();
  TextEditingController titleTaskController = TextEditingController();
  TextEditingController descriptionTaskController = TextEditingController();
  TimeOfDay timeOfDay = const TimeOfDay(hour: 25, minute: 59);
  DateTime dateTime = DateTime(2025);

  DateTime? newDate;
  TimeOfDay? newTime;

  String horasss = '';

  String formatedDate() {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  String formatedTime() {
    return '${timeOfDay.hour}:${timeOfDay.minute}';
  }

  IconData getIcon(ChatFilterModel chatIcons) {
    switch (chatIcons.chatIcons) {
      case ChatIcons.allIbox:
        return LineIcons.comments;

      case ChatIcons.inbox:
        return Icons.inbox;

      case ChatIcons.bookmark:
        return Icons.bookmark_border;
    }
  }

  bool showInitialDate(DateTime dateTime) {
    if (dateTime.year == 2025) {
      return false;
    } else {
      return true;
    }
  }

  bool showInitialTime(TimeOfDay timeOfDay) {
    if (timeOfDay.hour == 25) {
      return false;
    } else {
      return true;
    }
  }
  void overueTask () {
    
  }
 
  void saveTask() {
    print(taskMock.taskList.length);
    taskMock.taskList.add(
      TaskModel(
        title: titleTaskController.text,
        description: descriptionTaskController.text,
        dateAndTime:
            '${newDate!.day}/${newDate!.month}/${newDate!.year}\n${newTime!.hour}:${newTime!.minute}',
        isDone: false,
      ),
    );
    print(taskMock.taskList.length);
  }
}
