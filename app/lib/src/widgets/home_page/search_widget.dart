import 'package:flutter/material.dart';
import '../../../theme/extensions/colors_theme.dart';
import '../../../theme/extensions/text_style_theme.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ColorsTheme>()!;
    final textStyleTheme = Theme.of(context).extension<TextStyleTheme>()!;

    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: size.width * 0.16,
      width: size.width * 0.906,
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
                size: size.width * 0.085,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
