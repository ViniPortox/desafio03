import 'package:flutter/material.dart';
import '../../../../theme/extensions/colors_theme.dart';
import '../../home_page/widgets/selected_button_widget.dart';


class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;

    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: size.width * 0.16,
      width: size.width * 0.906,
      decoration: BoxDecoration(
        color: colorsTheme.secundaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: size.width * 0.48,
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.add_reaction,
            size: size.width * 0.064,
          ),
          Icon(
            Icons.attach_file_outlined,
            size: size.width * 0.064,
          ),
          SelectedButtonWidget(
            padding: size.width * 0.021,
            child: Icon(
              Icons.send_rounded,
              size: size.width * 0.064,
              color: colorsTheme.blackColor,
            ),
          )
        ],
      ),
    );
  }
}
