import 'dart:ui';

import 'package:flutter/material.dart';

class ClipReactButton extends StatelessWidget {
  final BorderRadius? borderRadius;
  final ImageFilter? imageFilter;
  final Widget child;
  final Color? color;
  final double? height;
  final double? width;

  const ClipReactButton({
    super.key,
    required this.child,
    this.imageFilter,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: imageFilter ?? ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(4),
            color: color ?? Colors.grey.withAlpha(100),
          ),
          child: child,
        ),
      ),
    );
  }
}
