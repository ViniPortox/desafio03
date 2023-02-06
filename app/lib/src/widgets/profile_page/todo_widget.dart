import 'package:flutter/material.dart';

import '../../../theme/extensions/colors_theme.dart';
import '../../../theme/extensions/text_style_theme.dart';
import '../home_page/selected_button_widget.dart';

class TodoWidget extends StatelessWidget {
  final String title;
  final String description;
  final bool isSelected;
  final void Function()? onPressed;
  const TodoWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.description,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: size.width * 0.173,
        width: size.width * 0.906,
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
                    padding: size.width * 0.028,
                    child: Icon(
                      Icons.done,
                      color: colorsTheme.colorSelectedChild,
                      size: size.width * 0.064,
                    ),
                  )
                : Container(
                    height: size.width * 0.122,
                    width: size.width * 0.122,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: colorsTheme.colorBackgroundSelected!,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
            SizedBox(width: size.width * 0.021),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
