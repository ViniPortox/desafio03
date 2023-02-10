import 'package:app/src/pages/home_page/widgets/chat_filter_list_widget.dart';
import 'package:app/src/pages/home_page/widgets/expansion_widget.dart';
import 'package:app/src/pages/home_page/widgets/list_tile_widget.dart';
import 'package:app/src/pages/home_page/widgets/navigator_widget.dart';
import 'package:app/src/pages/home_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

double altura = 350;
double altura2 = 350;
double altura3 = 350;
bool isOpen = true;
bool isOpen2 = false;
bool isOpen3 = true;

class _HomePageState extends State<HomePage> {
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
                    ExpansionWidget(
                      title: 'Unread',
                      height: altura,
                      isOpen: isOpen,
                      onTap: () {
                        setState(() {
                          isOpen = !isOpen;
                          isOpen == true
                              ? altura = size.width * 0.693
                              : altura = 0;
                        });
                      },
                      child: const ListTileWidget(muted: false),
                    ),
                    SizedBox(height: size.width * 0.064),
                    ExpansionWidget(
                      title: 'From team',
                      height: altura2,
                      isOpen: isOpen2,
                      onTap: () {
                        setState(() {
                          isOpen2 = !isOpen2;
                          isOpen2 == true
                              ? altura2 = size.width * 0.693
                              : altura2 = 0;
                        });
                      },
                      child: const ListTileWidget(muted: false),
                    ),
                    SizedBox(height: size.width * 0.064),
                    ExpansionWidget(
                      title: 'From companies',
                      height: altura2,
                      isOpen: isOpen3,
                      onTap: () {
                        setState(() {
                          isOpen3 = !isOpen3;
                          isOpen3 == true
                              ? altura2 = size.width * 0.693
                              : altura2 = 0;
                        });
                      },
                      child: const ListTileWidget(muted: false),
                    ),
                    SizedBox(height: size.width * 0.064),
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
