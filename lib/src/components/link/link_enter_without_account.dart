import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class LinkEnterWithoutAccount extends StatelessWidget {
  final String? pageNamedHome;
  const LinkEnterWithoutAccount({super.key, this.pageNamedHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          if (pageNamedHome == null) return;
          Navigator.pushNamed(context, pageNamedHome!);
        },
        child: Text(NegoLocalizations.of(context)?.withoutAccount ?? 'Log in without an account'),
      ),
    );
  }
}
