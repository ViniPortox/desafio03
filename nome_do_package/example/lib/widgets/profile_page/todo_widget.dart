import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';
import '../home_page/selected_button_widget.dart';

class TodoWidget extends StatelessWidget {
  final String title;
  final String description;
 final bool isSelected;
  const TodoWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Container(
      height: 65,
      width: 340,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected
            ? colorsTheme.colorSelectedChild
            : colorsTheme.colorSecundary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          isSelected
              ? SelectedButtonWidget(
                  child: Icon(
                    Icons.done,
                    color: colorsTheme.colorSelectedChild,
                  ),
                )
              : Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: colorsTheme.colorBackgroundSelected!,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: textStyleTheme.largeTextSize,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: textStyleTheme.mediumTextSize,
                  color: colorsTheme.colorPrimary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
