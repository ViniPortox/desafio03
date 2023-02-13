import 'package:app/src/controller/controller.dart';
import 'package:app/src/pages/info_page/widgets/new_task_widget.dart';
import 'package:app/src/pages/info_page/widgets/profile_container_info_widget.dart';
import 'package:app/src/pages/info_page/widgets/todo_widget.dart';
import 'package:flutter/material.dart';

import '../../../theme/extensions/colors_theme.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorsTheme.backgroundSelectedColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return NewTaskWidget(
                controller: controller,
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          size: size.width * 0.064,
        ),
      ),
      body: Container(
        color: colorsTheme.backgroundColor,
        height: size.height,
        child: Column(
          children: [
            const ProfileContainerInfoWidget(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.048,
                ),
                child: ListView.builder(
                  padding: EdgeInsets.only(
                    top: size.width * 0.064,
                    bottom: size.width * 0.021,
                  ),
                  itemCount: controller.taskMock.taskList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final taskList = controller.taskMock.taskList[index];
                    return TodoWidget(
                      title: taskList.title,
                      description: taskList.description,
                      dateAndTime: taskList.dateAndTime,
                      isDone: taskList.isDone,
                      onTap: () {
                        setState(() {
                          taskList.isDone = !taskList.isDone;
                        });
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
