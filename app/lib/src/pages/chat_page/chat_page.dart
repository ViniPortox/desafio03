import 'package:app/src/widgets/chat_page/app_bar_widget.dart';
import 'package:app/src/widgets/chat_page/message_widget.dart';
import 'package:app/src/widgets/chat_page/send_message_widget.dart';
import 'package:app/src/widgets/chat_page/user_messenger_widget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget(size: size.width * 0.266),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.042),
                child: Column(
                  children: [
                    SizedBox(height: size.width * 0.042),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const UserMesseger(
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        SizedBox(height: size.width * 0.021),
                        const MessageWidget(
                          myMessage: false,
                          message: 'Eu to com muito sono',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const UserMesseger(
                            mainAxisAlignment: MainAxisAlignment.end),
                        SizedBox(height: size.width * 0.021),
                        const MessageWidget(
                          myMessage: true,
                          message: 'Eu tbm to com muito sono',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const UserMesseger(
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        SizedBox(height: size.width * 0.021),
                        const MessageWidget(
                          myMessage: false,
                          message: 'Eu to com muito sono',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const UserMesseger(
                            mainAxisAlignment: MainAxisAlignment.end),
                        SizedBox(height: size.width * 0.021),
                        const MessageWidget(
                          myMessage: true,
                          message: 'Eu tbm to com muito sono',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: size.width * 0.05, child: const SendMessageWidget()),
        ],
      ),
    );
  }
}
