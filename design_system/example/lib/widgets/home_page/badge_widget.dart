import 'package:flutter/material.dart';
import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';

class BadgeWidget extends StatelessWidget {
  final bool isSelected;
  final String numberMessage;
  const BadgeWidget({
    Key? key,
    required this.numberMessage,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;

    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isSelected
            ? colorsTheme.colorBadgeSelected
            : colorsTheme.colorBadgeUnselected,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          numberMessage,
          style: TextStyle(
            fontSize: textStyleTheme.smallTextSize,
            color: colorsTheme.colorPrimary,
          ),
        ),
      ),
    );
  }
}
