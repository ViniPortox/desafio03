import 'package:flutter/material.dart';

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
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.064,
      height: size.width * 0.064,
      decoration: BoxDecoration(
        color: isSelected ? theme.popupMenuTheme.color : theme.primaryColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(numberMessage, style: theme.textTheme.caption),
      ),
    );
  }
}
