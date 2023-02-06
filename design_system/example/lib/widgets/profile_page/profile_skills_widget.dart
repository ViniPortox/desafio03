import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';

class ProfileSkillsWidget extends StatelessWidget {
  final Color colors;
  final String text;
  const ProfileSkillsWidget({
    Key? key,
    required this.colors,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: colorsTheme.colorProfileSkilltext,
            fontSize: textStyleTheme.mediumTextSize,
          ),
        ),
      ),
    );
  }
}
