import 'package:example/widgets/home_page/selected_button_widget.dart';
import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';


class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;

    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 60,
      width: 340,
      decoration: BoxDecoration(
        color: colorsTheme.colorSecundary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
       const   SizedBox(
            width: 180,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        const  Icon(Icons.add_reaction),
       const   Icon(Icons.attach_file_outlined),
          SelectedButtonWidget(
            padding: 8,
            child: Icon(
              Icons.send_rounded,
              color: colorsTheme.colorSelectedChild,
            ),
          )
        ],
      ),
    );
  }
}
