import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// A widget that applies a combined Fade (gradual appearance)
/// and Scale (scaling up/down) effect to its child widget,
/// utilizing the `flutter_animate` library.
///
/// This widget is ideal for introducing elements onto the screen
/// smoothly and with a subtle visual impact.
///
/// ### Usage Example:
/// ```dart
/// FadeAnimation(
///   delay: 500, // 500ms delay before the animation starts
///   child: Text(
///     'Animated Content',
///     style: TextStyle(fontSize: 24),
///   ),
/// )
/// ```
class FadeAnimation extends StatelessWidget {
  /// The widget to which the combined animation effects will be applied.
  ///
  /// This widget will be the target of the Fade and Scale effects.
  final Widget child;

  /// The delay, in milliseconds, before the animation begins.
  ///
  /// A value of 0 (the default) starts the animation immediately upon
  /// the widget being built.
  final int delay;

  /// Creates a [FadeAnimation] widget.
  ///
  /// The [child] parameter is required.
  /// The [delay] parameter is optional and defaults to 0.
  const FadeAnimation({super.key, required this.child, this.delay = 0});

  @override
  Widget build(BuildContext context) {
    // Create a Duration based on the provided delay
    final durationDelay = Duration(milliseconds: delay);

    return Animate(
      // List of effects to be applied. Both effects use the same delay.
      effects: [
        // 1. Fade Effect: The widget smoothly fades in (from opacity 0 to 1).
        FadeEffect(delay: durationDelay),
        // 2. Scale Effect: The widget scales up slightly during the fade.
        ScaleEffect(delay: durationDelay),
      ],
      // The child widget
      child: child,
    );
  }
}