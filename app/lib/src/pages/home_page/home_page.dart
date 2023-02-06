import 'package:app/src/widgets/home_page/chat_filter_list_widget.dart';
import 'package:app/src/widgets/home_page/list_tile_widget.dart';
import 'package:app/src/widgets/home_page/navigator_widget.dart';
import 'package:app/src/widgets/home_page/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: size.width * 0.128),
                    const SearchWidget(),
                    SizedBox(height: size.width * 0.037),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.042),
                      child: const ChatFilterListWidget(),
                    ),
                    SizedBox(height: size.width * 0.053),
                    const ListTileWidget(muted: false),
                    SizedBox(height: size.width * 0.069),
                    const ListTileWidget(muted: false),
                    SizedBox(height: size.width * 0.069),
                    const ListTileWidget(muted: true),
                    SizedBox(height: size.width * 0.069),
                    const ListTileWidget(muted: true),
                    SizedBox(height: size.width * 0.069),
                    const ListTileWidget(muted: false),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: NavigatorWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
