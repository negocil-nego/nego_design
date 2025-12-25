import 'package:flutter/material.dart';

/// A container with a background image.
///
/// Supports both network and asset images. The image covers the entire container.
/// Automatically detects image source by checking if the path starts with 'http'.
///
/// Example:
/// ```dart
/// ImageBackgroundContainer(
///   image: 'assets/background.png',
///   child: YourWidget(),
/// )
/// ```
class ImageBackgroundContainer extends StatelessWidget {
  /// Path to the image. Can be a network URL or asset path.
  final String image;
  /// The widget displayed on top of the background image.
  final Widget child;
  /// Creates a container with a background image.
  const ImageBackgroundContainer({
    super.key,
    required this.image,
    required this.child,
  });

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