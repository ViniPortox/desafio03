import 'package:example/widgets/home_page/selected_button_widget.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../theme/extensions/colors_theme.dart';


class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
   
    return Container(
      height: 106,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: colorsTheme.colorSecundary),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              LineIcons.file,
              size: 26,
              color: colorsTheme.colorPrimary,
            ),
            Icon(
              Icons.account_box_outlined,
              size: 26,
              color: colorsTheme.colorPrimary,
            ),
            Icon(
              Icons.analytics_outlined,
              size: 26,
              color: colorsTheme.colorPrimary,
            ),
            SelectedButtonWidget(
              child: Icon(
                LineIcons.comment,
                size: 26,
                color: colorsTheme.colorSelectedChild,
              ),
            ),
            Icon(
              Icons.grid_view_outlined,
              size: 26,
              color: colorsTheme.colorPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
