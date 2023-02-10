import 'package:flutter/material.dart';
import 'expansion_widget.dart';

class ChatExpansionWidget extends StatelessWidget {
  final String title;
  final double openingHeight;
  final bool isOpen;
  final void Function() onTap;
  final Widget child;
  const ChatExpansionWidget({
    Key? key,
    required this.title,
    required this.openingHeight,
    required this.isOpen,
    required this.onTap, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.042,
      ),
      child: ExpansionWidget(
        title: title,
        height: openingHeight,
        isOpen: isOpen,
        onTap: onTap,
        child: SizedBox(
          height: openingHeight,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: size.width * 0.069,
                ),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
