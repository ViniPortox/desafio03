
import 'package:flutter/material.dart';

import '../models/chat_filter_model.dart';

class HomeController {
  List<ChatFilterModel> chatFilter = [
    ChatFilterModel(
      chatIcons: ChatIcons.allIbox,
      textTypeChat: 'All',
      numberMessage: '35',
      isSelected: true,
    ),
    ChatFilterModel(
      chatIcons: ChatIcons.inbox,
      textTypeChat: 'Live Chat',
      numberMessage: '2',
      isSelected: false,
    ),
    ChatFilterModel(
      chatIcons: ChatIcons.bookmark,
      textTypeChat: 'Live Chat',
      numberMessage: '6',
      isSelected: false,
    ),
  ];

  IconData getIcon(ChatFilterModel chatIcons) {
    switch (chatIcons.chatIcons) {
      case ChatIcons.allIbox:
        return Icons.all_inbox_rounded;

      case ChatIcons.inbox:
        return Icons.inbox;

      case ChatIcons.bookmark:
        return  Icons.bookmark_border;
    }
  }
}
