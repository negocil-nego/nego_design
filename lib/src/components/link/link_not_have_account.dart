import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A text link to navigate to the registration page.
///
/// Displays "I don't have an account? Registration" with the word
/// "Registration" styled as a clickable link.
///
/// Example:
/// ```dart
/// LinkNotHaveAccount(
///   pageNamedRegister: '/register',
/// )
/// ```
class LinkNotHaveAccount extends StatefulWidget {
  /// Named route for the registration page.
  final String? pageNamedRegister;
  /// Creates a link to the registration page.
  const LinkNotHaveAccount({super.key, this.pageNamedRegister});

  @override
  State<LinkNotHaveAccount> createState() => _LinkNotHaveAccountState();
}

class _LinkNotHaveAccountState extends State<LinkNotHaveAccount> {
  late TapGestureRecognizer _registrationRecognizer;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _registrationRecognizer = TapGestureRecognizer()..onTap = () {
          if (widget.pageNamedRegister == null) return;
          Navigator.pushNamed(context, widget.pageNamedRegister!);
        };
    }
  }

  @override
  void dispose() {
    super.dispose();
    _registrationRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          text: NegoLocalizations.of(context)?.loginNotHaveAccount ?? 'I don\'t have an account?',
          children: [
            TextSpan(text: ' '),
            TextSpan(
              text: NegoLocalizations.of(context)?.registration ?? 'Registration',
              style: TextStyle(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              recognizer: _registrationRecognizer,
            ),
          ],
        ),
      ),
    );
  }
}