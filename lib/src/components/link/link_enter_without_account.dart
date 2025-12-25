import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A text button to navigate to home without logging in.
///
/// Displays a centered link that allows users to skip authentication
/// and go directly to the home page.
///
/// Example:
/// ```dart
/// LinkEnterWithoutAccount(
///   pageNamedHome: '/home',
/// )
/// ```
class LinkEnterWithoutAccount extends StatelessWidget {
  /// Named route for the home page.
  final String? pageNamedHome;

  /// Creates a link to enter without an account.
  const LinkEnterWithoutAccount({super.key, this.pageNamedHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          if (pageNamedHome == null) return;
          Navigator.pushReplacementNamed(context, pageNamedHome!);
        },
        child: Text(NegoLocalizations.of(context)?.withoutAccount ?? 'Log in without an account'),
      ),
    );
  }
}