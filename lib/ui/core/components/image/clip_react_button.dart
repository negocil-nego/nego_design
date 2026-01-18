import 'dart:ui';

import 'package:flutter/material.dart';

class ClipReactButton extends StatelessWidget {
  final Widget child;

  const ClipReactButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey.withAlpha(100),
          ),
          child: child,
        ),
      ),
    );
  }
}
