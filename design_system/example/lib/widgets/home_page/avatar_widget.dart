
import 'package:flutter/material.dart';

class AvatarWidet extends StatelessWidget {
  final Widget? badge;
  final double? size;
  final String imageNetwork;

  const AvatarWidet({Key? key, required this.imageNetwork, this.badge, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: size ?? 23,
          backgroundImage: NetworkImage(imageNetwork),
        ),
        Container(child: badge)
      ],
    );
  }
}
