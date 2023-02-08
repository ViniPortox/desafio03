import 'package:flutter/material.dart';

import '../../../../theme/extensions/colors_theme.dart';
import '../../../../theme/extensions/text_style_theme.dart';


class NameWidget extends StatelessWidget {
  final double? textSize;
  final String name;
  final bool isOnline;
  const NameWidget({
    Key? key,
    this.textSize,
    required this.name,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: textSize ?? textStyleTheme.nameMediumStyle.fontSize,
          ),
        ),
        const SizedBox(width: 6),
        if (isOnline) Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Container(
                  width: size.width * 0.026,
                  height: size.width * 0.026,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorsTheme.onlineColor,
                  ),
                ),
              ) else Container()
      ],
    );
  }
}
