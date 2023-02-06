import 'package:app/routes/routes.dart';
import 'package:app/src/pages/chat_page/chat_page.dart';
import 'package:app/src/pages/home_page/home_page.dart';
import 'package:app/src/pages/info_page/info_page.dart';
import 'package:flutter/material.dart';

class Pages {
  static Map<String, Widget Function(BuildContext)> pages = {
    Routes.home: (context) => const HomePage(),
    Routes.infoPage: (context) => const InfoPage(),
    Routes.chatPage: (context) => const ChatPage(),
  };
}
