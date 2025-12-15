import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function()? onPressed;

  final EdgeInsetsGeometry? padding;
  final Alignment alignment;
  final String label;
  const LoginButton({
    super.key,
    this.label = 'Login',
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(vertical: 20),
    this.alignment = Alignment.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding
        ),
        child: Text('Entrar'),
      ),
    );
  }
}
