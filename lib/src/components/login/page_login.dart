import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class PageLogin extends StatefulWidget {
  final Function(LoginModel model)? onPressed;

  const PageLogin({super.key, this.onPressed});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _formKey = GlobalKey<FormState>();
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
      title: 'Login',
      description: 'Faça o processo de autenticação',
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            InputEmailOrPhone(controller: _emailOrPhoneController),
            const SizedBox(height: 20),
            InputPassword(controller: _passwordController),
            TextButton(onPressed: () {}, child: Text('Esqueci minha senha ?')),
            const SizedBox(height: 10),
            LoginButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (widget.onPressed != null) {
                    widget.onPressed!(
                      LoginModel(
                        emailOrPhone: _emailOrPhoneController.text,
                        password: _passwordController.text,
                      ),
                    );
                  }
                }
              },
            ),
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
      ),
    );
  }
}
