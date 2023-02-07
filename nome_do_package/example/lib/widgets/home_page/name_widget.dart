import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';

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
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: textSize ?? textStyleTheme.largeTextSize,
          ),
        ),
        const SizedBox(width: 6),
        isOnline
            ? Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorsTheme.colorOnline,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
