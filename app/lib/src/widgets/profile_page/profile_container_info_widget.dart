import 'package:app/src/widgets/profile_page/profile_button_widget.dart';
import 'package:app/src/widgets/profile_page/profile_skills_widget.dart';
import 'package:flutter/material.dart';
import '../../../theme/extensions/colors_theme.dart';
import '../../../theme/extensions/text_style_theme.dart';
import '../home_page/avatar_widget.dart';
import '../home_page/name_widget.dart';

class ProfileContainerInfoWidget extends StatelessWidget {
  const ProfileContainerInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;
    return Container(
      height: size.width * 1.162,
      width: size.width * 1,
      decoration: BoxDecoration(
        color: colorsTheme.colorBackgroundInfo,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.width * 0.138),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.064),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                AvatarWidet(
                  radius: size.width * 0.109,
                  imageNetwork:
                      'https://feijoadasimulator.top/br/sources/4166.jpeg',
                ),
                Icon(
                  Icons.more_horiz,
                  size: size.width * 0.085,
                ),
              ],
            ),
          ),
          SizedBox(height: size.width * 0.026),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NameWidget(
                name: 'Nego Ney',
                isOnline: true,
                textSize: textStyleTheme.ultraTextSize,
              ),
            ],
          ),
          SizedBox(height: size.width * 0.021),
          Text(
            '86 9 9489-4600',
            style: TextStyle(
              fontSize: textStyleTheme.largeTextSize,
              color: colorsTheme.colorProfileSkilltext,
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.112),
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
          SizedBox(height: size.width * 0.037),
          Text(
            'Nego ney! 😝',
            style: TextStyle(
              fontSize: textStyleTheme.mediumTextSize,
              color: colorsTheme.colorProfileSkilltext,
            ),
          ),
          SizedBox(height: size.width * 0.021),
          Text(
            'nego nego nego ney.',
            style: TextStyle(
              fontSize: textStyleTheme.mediumTextSize,
              color: colorsTheme.colorProfileSkilltext,
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
              SizedBox(width: size.width * 0.021),
              ProfileSkillsWidget(
                  colors: colorsTheme.colorsSkill![1], text: 'Project Manager'),
            ],
          ),
          SizedBox(height: size.width * 0.021),
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
        ],
      ),
    );
  }
}
