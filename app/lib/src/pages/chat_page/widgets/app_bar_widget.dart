import 'package:app/utils/image_path.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../../../../theme/extensions/colors_theme.dart';
import '../../../../theme/extensions/text_style_theme.dart';
import '../../home_page/widgets/name_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  final double size;
  const AppBarWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return AppBar(
      toolbarHeight: size.width * 0.266,
      backgroundColor: colorsTheme.blackColor,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: size.width * 0.042),
        child: const CircleAvatar(
          backgroundImage: NetworkImage(
            ImagePath.imageAvatar,
          ),
        ),
      ),
      title: NameWidget(
        name: 'Nego Ney',
        isOnline: false,
        textSize: textStyleTheme.nameSmallStyle.fontSize,
      ),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: size.width * 0.032,
                horizontal: size.width * 0.042,
              ),
              decoration: BoxDecoration(
                color: colorsTheme.secundaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Agree to Offer'),
            ),
          ],
        ),
        SizedBox(width: size.width * 0.032),
        const Icon(Icons.calendar_today),
        SizedBox(width: size.width * 0.021),
        const Icon(LineIcons.calculator),
        SizedBox(width: size.width * 0.053),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);

  @override
  Widget get child => throw UnimplementedError();
}
