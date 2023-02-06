import 'package:flutter/material.dart';
import '../theme/theme_extansion.dart';

class SelectedButtonWidget extends StatelessWidget {
  final double width;
  final Widget child;
  const SelectedButtonWidget({Key? key, required this.child, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customtheme = Theme.of(context).extension<CustomTheme>()!;
    final size = MediaQuery.of(context).size;
    return Container(
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.032,
          vertical: size.width * 0.032,
        ),
        decoration: customtheme.decoration,
        child: child);
  }
}
