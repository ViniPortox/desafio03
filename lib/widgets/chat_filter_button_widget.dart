
import 'package:desafio03/widgets/selected_button_widget.dart';
import 'package:flutter/material.dart';

import '../controller/home_controller.dart';
import '../models/chat_filter_model.dart';
import 'badge_widget.dart';

class ChatFilterButtonWidget extends StatelessWidget {
  final ChatFilterModel filterIcon;
  final String filterTypeTextChat;
  final String numberMessage;
  final bool isSelected;
  const ChatFilterButtonWidget(
      {Key? key,
      required this.filterIcon,
      required this.filterTypeTextChat,
      required this.numberMessage,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController();
    return isSelected ? SelectedButtonWidget(
      width: 120,
      child: Row(
        children: [
          Icon(controller.getIcon(filterIcon)),
          Text(filterTypeTextChat),
          BadgeWidget(
            numberMessage: numberMessage,
            isSelected: isSelected,
          )
        ],
      ),
    ) : SizedBox(width: size.width * 0.346,
      child: Row(
          children: [
            Icon(controller.getIcon(filterIcon)),
            Text(filterTypeTextChat),
            BadgeWidget(
              numberMessage: numberMessage,
              isSelected: isSelected,
            )
          ],
        ),
    ) ;
  }
}
