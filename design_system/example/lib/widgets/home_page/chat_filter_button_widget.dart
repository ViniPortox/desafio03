import 'package:example/widgets/home_page/selected_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';
import 'badge_widget.dart';

class ChatFilterButtonWidget extends StatelessWidget {

  final String filterTypeTextChat;
  final String numberMessage;
  final bool isSelected;
  const ChatFilterButtonWidget(
      {Key? key,

      required this.filterTypeTextChat,
      required this.numberMessage,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;

    return isSelected
        ? Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SelectedButtonWidget(
              width: 124,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LineIcons.comments,
                    color: colorsTheme.colorSelectedChild,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    filterTypeTextChat,
                    style: TextStyle(
                      fontSize: textStyleTheme.mediumTextSize,
                      color: colorsTheme.colorSelectedChild,
                    ),
                  ),
                  const SizedBox(width: 4),
                  BadgeWidget(
                    numberMessage: numberMessage,
                    isSelected: isSelected,
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              width: 126,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                   Icons.inbox,
                    color: colorsTheme.colorIcons,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    filterTypeTextChat,
                    style: TextStyle(
                      fontSize: textStyleTheme.mediumTextSize,
                      color: colorsTheme.colorPrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
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
