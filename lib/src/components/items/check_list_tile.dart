import 'package:flutter/material.dart';

/// A list tile with a check icon and text.
///
/// Displays a row with a checkmark (or circle) icon followed by text.
/// Useful for displaying steps, requirements, or completed items.
///
/// Example:
/// ```dart
/// CheckListTile(
///   text: 'Complete profile information',
///   isChecked: true,
/// )
/// ```
class CheckListTile extends StatelessWidget {
  /// Text content displayed next to the icon.
  final String text;
  /// Whether to show a checked or unchecked icon.
  final bool isChecked;
  /// Creates a check list tile.
  const CheckListTile({
    super.key,
    required this.text,
    this.isChecked = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        isChecked
            ? Icon(Icons.check_circle, color: colorScheme.primary)
            : Icon(Icons.circle_outlined, color: colorScheme.primary),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: colorScheme.outline),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}