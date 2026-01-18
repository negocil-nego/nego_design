import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class CircleAvatarSwitcher extends StatelessWidget {
  final double maxRadius;
  final String image;

  const CircleAvatarSwitcher({
    super.key,
    required this.maxRadius,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: maxRadius,
      backgroundImage: isImageNetwork(image)
          ? NetworkImage(image)
          : AssetImage(image),
    );
  }
}
