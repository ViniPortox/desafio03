import 'package:example/widgets/profile_page/profile_button_widget.dart';
import 'package:example/widgets/profile_page/profile_skills_widget.dart';
import 'package:flutter/material.dart';

import '../../theme/extensions/colors_theme.dart';
import '../../theme/extensions/text_style_theme.dart';
import '../home_page/avatar_widget.dart';
import '../home_page/name_widget.dart';

class ProfileContainerInfoWidget extends StatelessWidget {
  const ProfileContainerInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Container(
      height: 452,
      width: 375,
      decoration: BoxDecoration(
        color: colorsTheme.colorBackgroundInfo,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 56),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.arrow_back_ios_new_rounded),
                AvatarWidet(
                  size: 41,
                  imageNetwork:
                      'https://feijoadasimulator.top/br/sources/4166.jpeg',
                ),
                Icon(
                  Icons.more_horiz,
                  size: 32,
                ),
              ],
            ),
          ),
          NameWidget(
            name: 'Nego Ney',
            isOnline: true,
            textSize: textStyleTheme.ultraTextSize,
          ),
          const SizedBox(height: 8),
          Text(
            '86 9 9489-4600',
            style: TextStyle(
              fontSize: textStyleTheme.mediumTextSize,
              color: colorsTheme.colorPrimary,
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProfileButtonWidget(icon: Icons.phone_in_talk, avaliable: true),
                ProfileButtonWidget(
                    icon: Icons.videocam_outlined, avaliable: true),
                ProfileButtonWidget(
                    icon: Icons.volume_off_sharp, avaliable: true),
                ProfileButtonWidget(icon: Icons.mail, avaliable: false)
              ],
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Nego ney! 😝',
            style: TextStyle(
              fontSize: textStyleTheme.mediumTextSize,
              color: colorsTheme.colorPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'nego nego nego ney.',
            style: TextStyle(
              fontSize: textStyleTheme.mediumTextSize,
              color: colorsTheme.colorPrimary,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileSkillsWidget(
                colors: colorsTheme.colorsSkill![0],
                text: 'UI/UX Designer',
              ),
              const SizedBox(width: 8),
              ProfileSkillsWidget(
                  colors: colorsTheme.colorsSkill![1], text: 'Project Manager'),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileSkillsWidget(
                  colors: colorsTheme.colorsSkill![2], text: 'QA'),
              const SizedBox(width: 6),
              ProfileSkillsWidget(
                  colors: colorsTheme.colorsSkill![3], text: 'SEO'),
              const SizedBox(width: 6),
              ProfileSkillsWidget(
                  colors: colorsTheme.colorsSkill![4],
                  text: 'Java Script Developer'),
            ],
          ),
          const SizedBox(height: 22)
        ],
      ),
    );
  }
}
