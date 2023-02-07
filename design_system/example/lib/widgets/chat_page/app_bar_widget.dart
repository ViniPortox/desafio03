import 'package:example/widgets/home_page/avatar_widget.dart';
import 'package:example/widgets/home_page/name_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: colorsTheme.colorSelectedChild,
      elevation: 0,
      leading: const AvatarWidet(
          size: 14,
          imageNetwork:
              'https://m.extra.globo.com/incoming/23560180-ee0-fc1/w480h720-PROP/81865188_re-rio-de-janeiro-rj-27-03-2019-nego-ney-o-menino-de-7-anos-que-tem-viralizado-por-seu.jpg'),
      title: NameWidget(
          name: 'Nego Ney',
          isOnline: false,
          textSize: textStyleTheme.mediumTextSize),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: colorsTheme.colorSecundary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Agree to Offer'),
            ),
          ],
        ),
        const SizedBox(width: 12),
        const Icon(Icons.calendar_today),
        const SizedBox(width: 8),
        const Icon(LineIcons.calculator),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  
  Widget get child => throw UnimplementedError();
}
