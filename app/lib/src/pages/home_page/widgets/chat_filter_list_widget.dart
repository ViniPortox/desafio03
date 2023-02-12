import 'package:app/src/mocks/chat_filter_mock.dart';
import 'package:flutter/material.dart';
import 'chat_filter_button_widget.dart';

class ChatFilterListWidget extends StatelessWidget {
  const ChatFilterListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final chatFilterMock = ChatFilterMock();

    return SizedBox(
      height: size.width * 0.133,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: chatFilterMock.chatFilter.length, (context, index) {
              final filterList = chatFilterMock.chatFilter[index];
              return ChatFilterButtonWidget(
                filterIcon: filterList,
                filterTypeTextChat: filterList.textTypeChat,
                isSelected: filterList.isSelected,
                numberMessage: filterList.numberMessage,
              );
            }),
          )
        ],
      ),
    );
  }
}
