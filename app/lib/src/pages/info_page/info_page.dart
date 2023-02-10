import 'package:app/src/controller/home_controller.dart';
import 'package:app/src/pages/info_page/widgets/profile_container_info_widget.dart';
import 'package:app/src/pages/info_page/widgets/task_widget.dart';
import 'package:app/src/pages/info_page/widgets/todo_widget.dart';
import 'package:flutter/material.dart';
import '../../../theme/extensions/colors_theme.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final controller = HomeController();

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
              return ShowEditTaskWidget(
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
      body: SizedBox(
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileContainerInfoWidget(),
              // SizedBox(height: size.width * 0.064),
              SizedBox(
                width: 450,
                height: 400,
                child: ListView.builder(
                  itemCount: controller.taskMock.taskList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final taskList = controller.taskMock.taskList[index];
                    return TodoWidget(
                      isSelected: taskList.isDone,
                      title: taskList.title,
                      description: taskList.description,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
