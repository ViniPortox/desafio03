import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';


class ProfileButtonWidget extends StatelessWidget {
 final bool avaliable;
  final IconData icon;

const  ProfileButtonWidget({Key? key, required this.icon, required this.avaliable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;

    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: avaliable
            ? colorsTheme.colorProfileIconsAvaliable
            : colorsTheme.colorProfileIconsUnvaliable,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(icon,
          size: 36,
          color: avaliable
              ? colorsTheme.colorIconsWhite
              : colorsTheme.colorPrimary),
    );
  }
}
