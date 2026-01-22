import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class BoxDecorationImageContainer extends StatelessWidget {
  final String image;
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  const BoxDecorationImageContainer({
    super.key,
    required this.image,
    required this.child,
    this.height,
    this.width,
    this.borderRadius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: isImageNetwork(image)
              ? NetworkImage(image)
              : AssetImage(image),
          fit: BoxFit.cover,
        ),
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
