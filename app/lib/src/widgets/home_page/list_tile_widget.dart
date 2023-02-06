import 'package:app/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../../theme/extensions/colors_theme.dart';
import '../../../theme/extensions/text_style_theme.dart';
import 'avatar_widget.dart';
import 'badge_widget.dart';
import 'name_widget.dart';

class ListTileWidget extends StatelessWidget {
 final bool muted;
  const ListTileWidget({
    Key? key,
    required this.muted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.chatPage),
      child: SizedBox(
        width: size.width * 0.906,
        height: size.width * 0.186,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AvatarWidet(
                    badge: BadgeWidget(numberMessage: '35', isSelected: true),
                    imageNetwork:
                        'https://m.extra.globo.com/incoming/23560180-ee0-fc1/w480h720-PROP/81865188_re-rio-de-janeiro-rj-27-03-2019-nego-ney-o-menino-de-7-anos-que-tem-viralizado-por-seu.jpg'),
                SizedBox(width: size.width * 0.032),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  NameWidget(name: 'Nego Ney', isOnline: true),
                    const SizedBox(height: 4),
                    Text(
                      '(86) 9 9489-4600',
                      style: TextStyle(
                        fontSize: textStyleTheme.smallTextSize,
                        color: colorsTheme.colorPrimary,
                      ),
                    ),
                    SizedBox(height: size.width * 0.021),
                    SizedBox(
                      width: size.width * 0.56,
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        text: TextSpan(
                          text: 'nego ney nego ney nego nego nego ney?',
                          style: TextStyle(
                            fontSize: textStyleTheme.mediumTextSize,
                            color: colorsTheme.colorPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12:35',
                  style: TextStyle(
                    fontWeight: textStyleTheme.fontWeightLargeTitle,
                    fontSize: textStyleTheme.smallTextSize,
                    color: colorsTheme.colorPrimary,
                  ),
                ),
                muted
                    ? Icon(
                        Icons.volume_off,
                        size: size.width * 0.042,
                        color: colorsTheme.colorPrimary,
                      )
                    : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
