import 'package:flutter/material.dart';
import '../../../../theme/extensions/colors_theme.dart';
import '../../home_page/widgets/name_widget.dart';


class UserMesseger extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const UserMesseger({
    Key? key,
    required this.mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://m.extra.globo.com/incoming/23560180-ee0-fc1/w480h720-PROP/81865188_re-rio-de-janeiro-rj-27-03-2019-nego-ney-o-menino-de-7-anos-que-tem-viralizado-por-seu.jpg',),
        ),
        SizedBox(width: size.width * 0.021),
        const NameWidget(name: 'Nego Ney', isOnline: false),
        SizedBox(width: size.width * 0.037),
        Text(
          '13:32',
          style: TextStyle(color: colorsTheme.primaryColor),
        ),
      ],
    );
  }
}
