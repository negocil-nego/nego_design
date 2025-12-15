import 'package:flutter/material.dart';
/// A container that displays a background image with a continuous and
/// looping zoom (scale) animation effect.
///
/// The scale animation makes the image vary from 1.0 to 1.5, creating a
/// dynamic visual effect. The widget ensures the image fills the screen
/// and its child is placed on top of the animated background.
class ImageScaleTransactionContainer extends StatefulWidget {
  /// The path of the image to be displayed.
  /// Supports network images (if the path starts with 'http') or
  /// asset images.
  final String image;
  /// The widget to be displayed on top of the animated background image.
  final Widget child;
  /// Creates an [ImageScaleTransactionContainer].
  const ImageScaleTransactionContainer({
    super.key,
    required this.image,
    required this.child,
  });

  @override
  State<ImageScaleTransactionContainer> createState() => _ImageScaleTransactionContainerState();
}

class _ImageScaleTransactionContainerState extends State<ImageScaleTransactionContainer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animate;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat(reverse: true);

    _animate = Tween<double>(
      begin: 1.0,
      end: 1.5,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: ClipRect(
            child: OverflowBox(
              alignment: Alignment.center,
              child: ScaleTransition(
                scale: _animate,
                child: widget.image.startsWith('http')
                    ? Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height,
                )
                    : Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height,
                ),
              ),
            ),
          ),
        ),
        widget.child
      ],
    );
  }
}