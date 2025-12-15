import 'package:flutter/material.dart';
class ImageBackgroundContainer extends StatelessWidget {
  final String image;
  final Widget child;

  const ImageBackgroundContainer({super.key, required this.image, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image.startsWith('http')
              ? NetworkImage(image)
              : AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
