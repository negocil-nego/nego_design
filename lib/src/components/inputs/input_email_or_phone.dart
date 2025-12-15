import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class InputEmailOrPhone extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? labelText;
  final bool? filled;
  final Color? fillColor;
  final bool obscureText;
  final int? maxLength;
  final InputBorder? inputBorder;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;

  const InputEmailOrPhone({
    super.key,
    this.label,
    this.labelText = 'Email',
    this.hintText = 'Digita o email ou contato',
    this.controller,
    this.maxLength,
    this.obscureText = false,
    this.filled = true,
    this.fillColor,
    this.inputBorder,
    this.textInputAction,
    this.onChanged
  });

  @override
  State<InputEmailOrPhone> createState() => _InputEmailOrPhoneState();
}
class _InputEmailOrPhoneState extends State<InputEmailOrPhone> {
  @override
  Widget build(BuildContext context) {
    return InputField(
      key: widget.key,
      label: widget.label,
      filled: widget.filled,
      hintText: widget.hintText,
      fillColor: widget.fillColor,
      labelText: widget.labelText,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputBorder: widget.inputBorder,
      obscureText: widget.obscureText,
      textInputType: TextInputType.emailAddress ,
      textInputAction: widget.textInputAction,
      prefixIcon: Icon(Icons.email_outlined),
      suffixIcon: Icon(Icons.close),
    );
  }
}