import 'package:flutter/material.dart';

class ExpansionWidget extends StatefulWidget {
  final String title;
  final double height;
  final bool isOpen;
  final void Function() onTap;
  final Widget child;
  const ExpansionWidget({
    Key? key,
    required this.title,
    required this.height,
    required this.isOpen,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  State<ExpansionWidget> createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRect(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.042,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: widget.onTap,
              child: SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      widget.isOpen
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      size: 24,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: widget.height,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: size.width * 0.053,
                    ),
                    child: SizedBox(
                      height: size.width * 0.186,
                      child: widget.child,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
