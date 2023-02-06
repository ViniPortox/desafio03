import 'package:flutter/material.dart';



class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: size.width * 0.048),
      height: size.width * 0.16,
      width: size.width * 0.906,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: theme.primaryColor,
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: size.width * 0.096,
            ),
            hintText: 'Search',
            hintStyle: theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
