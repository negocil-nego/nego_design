import 'package:flutter/material.dart';

/// A full-width button with customizable padding and disabled state.
///
/// This button spans the full width of its parent and can be disabled
/// with visual feedback.
///
/// Example:
/// ```dart
/// BaseContainerButton(
///   label: 'Submit',
///   onPressed: () => print('Pressed'),
///   isDisabled: false,
/// )
/// ```
class BaseContainerButton extends StatelessWidget {
  /// Callback when button is pressed. Ignored if [isDisabled] is true.
  final Function()? onPressed;
  /// Internal padding of the button.
  final EdgeInsetsGeometry? padding;
  /// Alignment of the button content.
  final Alignment alignment;
  /// Text displayed on the button.
  final String label;
  /// Whether the button is disabled. Disables interaction and reduces opacity.
  final bool isDisabled;
  /// Creates a full-width container button.
  const BaseContainerButton({
    super.key,
    this.label = 'Confirm',
    this.isDisabled = false,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(vertical: 20),
    this.alignment = Alignment.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: isDisabled ? () {} : onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: isDisabled
              ? colorScheme.primary.withAlpha(150)
              : colorScheme.primary,
        ),
        child: Text(
          label,
          style: TextStyle(color: colorScheme.onPrimary),
        ),
      ),
    );
  }
}