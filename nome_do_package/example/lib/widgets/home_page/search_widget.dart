import 'package:example/theme/extensions/colors_theme.dart';
import 'package:example/theme/extensions/text_style_theme.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;

    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 60,
      width: 340,
      decoration: BoxDecoration(
        color: colorsTheme.colorSecundary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: textStyleTheme.largeTextSize,
                color: colorsTheme.colorPrimary,
              ),
              prefixIcon: Icon(
                color: colorsTheme.colorPrimary,
                Icons.search,
                size: 32,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
