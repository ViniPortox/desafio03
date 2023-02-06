import 'package:example/theme/dark_theme.dart';
import 'package:example/widgets/chat_page/app_bar_widget.dart';
import 'package:example/widgets/chat_page/message_widget.dart';
import 'package:example/widgets/chat_page/send_message_widget.dart';
import 'package:example/widgets/home_page/badge_widget.dart';

import 'package:example/widgets/home_page/list_tile_widget.dart';
import 'package:example/widgets/home_page/name_widget.dart';
import 'package:example/widgets/home_page/navigator_widget.dart';
import 'package:example/widgets/home_page/search_widget.dart';
import 'package:example/widgets/home_page/selected_button_widget.dart';
import 'package:example/widgets/profile_page/profile_button_widget.dart';
import 'package:example/widgets/profile_page/profile_container_info_widget.dart';
import 'package:example/widgets/profile_page/profile_skills_widget.dart';
import 'package:example/widgets/profile_page/todo_widget.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(name: 'Desafio 3 Components'),
      themes: [
        WidgetbookTheme(
          name: 'dark',
          data: getDarkTheme(),
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: 'design system',
          widgets: [
            WidgetbookComponent(
              name: 'Search Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Default',
                  child: const SearchWidget(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Selected Button Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Default ',
                  child: const SelectedButtonWidget(
                    child: Icon(
                      Icons.done,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Badge Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Selected',
                  child:
                      const BadgeWidget(isSelected: true, numberMessage: '35'),
                ),
                WidgetbookUseCase.center(
                  name: 'Unselected',
                  child:
                      const BadgeWidget(isSelected: false, numberMessage: '2'),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'List Tile',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Default',
                  child: const ListTileWidget(muted: false),
                ),
                WidgetbookUseCase.center(
                  name: 'Chat Muted',
                  child: const ListTileWidget(muted: true),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Name Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Online',
                  child: const NameWidget(name: 'Nego Ney', isOnline: true),
                ),
                WidgetbookUseCase.center(
                  name: 'Offline',
                  child: const NameWidget(name: 'Nego Ney', isOnline: false),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Bottom Navigator',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Default',
                  child: const NavigatorWidget(),
                )
              ],
            ),
            WidgetbookComponent(
              name: 'Profile Icons',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Avaliable',
                  child: const ProfileButtonWidget(
                    icon: Icons.phone_in_talk_rounded,
                    avaliable: true,
                  ),
                ),
                WidgetbookUseCase.center(
                  name: 'Unavalible',
                  child: const ProfileButtonWidget(
                    icon: Icons.volume_off,
                    avaliable: false,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Profile Skills Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Example 1',
                  child: const ProfileSkillsWidget(
                      colors: Color(0xff454084), text: 'UI/UX Designer'),
                ),
                WidgetbookUseCase.center(
                  name: 'Example 2',
                  child: const ProfileSkillsWidget(
                      colors: Color(0xff454084), text: 'Project Manager'),
                ),
                WidgetbookUseCase.center(
                  name: 'Example 3',
                  child: const ProfileSkillsWidget(
                      colors: Color(0xff8568A9), text: 'Java Script Developer'),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Profile Container Info',
              useCases: [
                WidgetbookUseCase.center(
                    name: 'Default', child: const ProfileContainerInfoWidget()),
              ],
            ),
            WidgetbookComponent(
              name: 'Todo Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Selected',
                  child: const TodoWidget(
                    title: 'Interview with Lead Designer',
                    description: 'Sep 25, 2022 10:30 AM',
                    isSelected: true,
                  ),
                ),
                WidgetbookUseCase.center(
                  name: 'Unselected',
                  child: const TodoWidget(
                    title: 'Interview with Lead Designer',
                    description: 'Sep 25, 2022 10:30 AM',
                    isSelected: false,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'AppBar Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Default',
                  child: const AppBarWidget(),
                )
              ],
            ),
            WidgetbookComponent(
              name: 'Message Widget',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'My Message',
                  child: const MessageWidget(
                    myMessage: true,
                    message: 'How does it sound for you?',
                  ),
                ),
                WidgetbookUseCase.center(
                  name: 'Your Message',
                  child: const MessageWidget(
                    myMessage: false,
                    message: 'How does it sound for you?',
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Send Message',
              useCases: [
                WidgetbookUseCase.center(
                  name: 'Default',
                  child: const SendMessageWidget(),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const WidgetbookHotReload(),
  );
}
