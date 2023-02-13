import 'package:app/src/pages/home_page/widgets/selected_button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../theme/extensions/colors_theme.dart';
import '../../../../theme/extensions/text_style_theme.dart';
import '../../../controller/controller.dart';
import '../../../models/chat_filter_model.dart';
import 'badge_widget.dart';

class ChatFilterButtonWidget extends StatelessWidget {
  final ChatFilterModel filterIcon;
  final String filterTypeTextChat;
  final String numberMessage;
  final bool isSelected;
  const ChatFilterButtonWidget({
    Key? key,
    required this.filterIcon,
    required this.filterTypeTextChat,
    required this.numberMessage,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Controller();
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;

    return isSelected
        ? Padding(
            padding: EdgeInsets.only(right: size.width * 0.042),
            child: SelectedButtonWidget(
              width: size.width * 0.33,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    controller.getIcon(filterIcon),
                    color: colorsTheme.blackColor,
                    size: size.width * 0.069,
                  ),
                  SizedBox(width: size.width * 0.026),
                  Text(
                    filterTypeTextChat,
                    style: textStyleTheme.chatFilterButtonSelectedStyle,
                  ),
                  const SizedBox(width: 6),
                  BadgeWidget(
                    numberMessage: numberMessage,
                    isSelected: isSelected,
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(right: size.width * 0.042),
            child: SizedBox(
              width: size.width * 0.352,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    controller.getIcon(filterIcon),
                    color: colorsTheme.iconsColor,
                    size: size.width * 0.069,
                  ),
                  SizedBox(width: size.width * 0.026),
                  Text(
                    filterTypeTextChat,
                    style: textStyleTheme.chatFilterButtonStyle,
                  ),
                  const SizedBox(width: 6),
                  BadgeWidget(
                    numberMessage: numberMessage,
                    isSelected: isSelected,
                  )
                ],
              ),
            ),
          );
  }
}
