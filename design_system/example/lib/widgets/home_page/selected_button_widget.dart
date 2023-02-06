import 'package:flutter/material.dart';
import '../../theme/extensions/colors_theme.dart';


class SelectedButtonWidget extends StatelessWidget {
  final double? padding;
  final double? width;
  final Widget child;
  const SelectedButtonWidget(
      {Key? key, required this.child, this.width, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;

    return Container(
      width: width,
      padding: EdgeInsets.all(padding ?? 12),
      decoration: BoxDecoration(
        color: colorsTheme.colorBackgroundSelected,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}
