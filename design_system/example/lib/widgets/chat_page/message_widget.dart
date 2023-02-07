import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';


class MessageWidget extends StatelessWidget {
  final String message;
 final bool myMessage;
 const MessageWidget({
    Key? key,
    required this.myMessage,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    
    return Container(
   
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      decoration: BoxDecoration(
           color: myMessage ? colorsTheme.colorTerciary : colorsTheme.colorSecundary,
        borderRadius: myMessage
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(18),
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              )
            : const BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
      ),
      child: Text(message),
    );
  }
}
