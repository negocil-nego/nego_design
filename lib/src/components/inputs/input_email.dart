import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class InputEmail extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? labelText;
  final bool? filled;
  final Color? fillColor;
  final bool obscureText;
  final int? maxLength;
  final InputBorder? inputBorder;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;

  const InputEmail({
    super.key,
    this.label,
    this.labelText = 'Email',
    this.hintText = 'Enter your email',
    this.controller,
    this.maxLength,
    this.obscureText = false,
    this.filled = true,
    this.fillColor = Colors.black12,
    this.inputBorder = InputBorder.none,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
  });

  @override
  State<InputEmail> createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return InputField(
      key: widget.key,
      label: widget.label,
      filled: widget.filled,
      fillColor: widget.fillColor,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputBorder: widget.inputBorder,
      obscureText: widget.obscureText,
      textInputAction: widget.textInputAction,
      textInputType: TextInputType.emailAddress,
      hintText: NegoLocalizations.of(context)?.inputEmailHintText ?? widget.hintText,
      labelText: NegoLocalizations.of(context)?.inputEmailLabelText ?? widget.labelText,
      prefixIcon: Icon(Icons.email_outlined),
      suffixIcon: Icon(Icons.close),
      validator: (value) => Validators.email(value, context),
    );
  }
}
