import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _emailOrPhoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailOrPhoneController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BaseContainer(
      child: ListView(
        shrinkWrap: true,
        children: [
          InputEmailOrPhone(controller: _emailOrPhoneController),
          const SizedBox(height: 20),
          InputPassword(controller: _passwordController),
          TextButton(onPressed: () {}, child: Text('Esqueci minha senha ?')),
          const SizedBox(height: 10),
          LoginButton(onPressed: () {}),
          const SizedBox(height: 20),
          const OrDivider(),
          const SizedBox(height: 20),
          SocialLinkButton(
            label: 'Login com Google',
            image: NegoAppImage.google,
          ),
          const SizedBox(height: 20),
          SocialLinkButton(
            label: 'Login com Facebook',
            image: NegoAppImage.facebook,
          ),
          const SizedBox(height: 20),
          Container(
            //child: TextButton(onPressed: () {}, child: Text('Esqueci minha senha ?')),
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                text: 'Não tenho conta?',
                children: [
                  TextSpan(text: '  '),
                  TextSpan(
                    text: 'Cadastramento',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
