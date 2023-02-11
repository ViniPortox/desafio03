import 'package:app/src/mock/task_mock.dart';
import 'package:app/src/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../models/chat_filter_model.dart';

class HomeController {
  final taskMock = TaskMock();

  final formKey = GlobalKey<FormState>();
  TextEditingController titleTaskController = TextEditingController();
  TextEditingController descriptionTaskController = TextEditingController();
  TimeOfDay timeOfDay = const TimeOfDay(hour: 25, minute: 59);
  DateTime dateTime = DateTime(2025);

  String formatedDate() {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  String formatedTime() {
    return '${timeOfDay.hour}:${timeOfDay.minute}';
  }

  List<ChatFilterModel> chatFilter = [
    ChatFilterModel(
      chatIcons: ChatIcons.allIbox,
      textTypeChat: 'All',
      numberMessage: '35',
      isSelected: true,
    ),
    ChatFilterModel(
      chatIcons: ChatIcons.inbox,
      textTypeChat: 'Live Chat',
      numberMessage: '2',
      isSelected: false,
    ),
    ChatFilterModel(
      chatIcons: ChatIcons.bookmark,
      textTypeChat: 'Live Chat',
      numberMessage: '6',
      isSelected: false,
    ),
  ];

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

  // void minutesFormated (TimeOfDay timeOfDay) {
  //   if (timeOfDay.minute.toString().contains('0')){

  //   }

  // }


  void saveTask() {
    print(taskMock.taskList.length);
    taskMock.taskList.add(
      TaskModel(
        title: titleTaskController.text,
        description: descriptionTaskController.text,
        isDone: false,
      ),
    );
    print(taskMock.taskList.length);
  }


}
