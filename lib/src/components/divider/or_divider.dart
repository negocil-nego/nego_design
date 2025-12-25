import 'package:flutter/material.dart';
import 'package:nego_design/l10n/nego_localizations.dart';
/// A horizontal divider with centered "Or" text.
///
/// Displays a line with the word "Or" (localized) in the center.
/// Commonly used to separate alternative login methods.
///
/// Example:
/// ```dart
/// Column(
///   children: [
///     LoginForm(),
///     OrDivider(),
///     SocialLoginButtons(),
///   ],
/// )
/// ```
class OrDivider extends StatelessWidget {
  /// Creates an "Or" divider.
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 30,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Divider(
            color: colorScheme.primary,
          ),
          Container(
            color: colorScheme.onPrimary,
            width: MediaQuery.of(context).size.width * 0.09,
            child: Center(
              child: Text(
                NegoLocalizations.of(context)?.orDividerText ?? 'Or',
              ),
            ),
          ),
        ],
      ),
    );
  }
}