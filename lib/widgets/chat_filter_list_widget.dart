import 'package:flutter/material.dart';


import '../controller/home_controller.dart';
import 'chat_filter_button_widget.dart';

class ChatFilterListWidget extends StatelessWidget {
  const ChatFilterListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();

    return SizedBox(
      height: 500,
      width: 500,
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: controller.chatFilter.length, (context, index) {
            final filterList = controller.chatFilter[index];
            return ChatFilterButtonWidget(
              filterIcon: filterList,
              filterTypeTextChat: filterList.textTypeChat,
              isSelected: filterList.isSelected,
              numberMessage: filterList.numberMessage,
            );
          }))
        ],
      ),
    );
  }
}
