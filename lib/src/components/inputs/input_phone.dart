import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class InputPhone extends StatefulWidget {
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

  const InputPhone({
    super.key,
    this.label,
    this.labelText = 'Contact',
    this.hintText = 'Enter your phone number',
    this.controller,
    this.maxLength,
    this.obscureText = false,
    this.filled = true,
    this.fillColor = Colors.black12,
    this.inputBorder = InputBorder.none,
    this.textInputAction = TextInputAction.next,
    this.onChanged
  });

  @override
  State<InputPhone> createState() => _InputPhoneState();
}
class _InputPhoneState extends State<InputPhone> {
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
      textInputType: TextInputType.phone ,
      textInputAction: widget.textInputAction,
      hintText: NegoLocalizations.of(context)?.inputPhoneHintText ?? widget.hintText,
      labelText: NegoLocalizations.of(context)?.inputPhoneLabelText ?? widget.labelText,
      prefixIcon: Icon(Icons.phone_android_rounded),
      suffixIcon: Icon(Icons.close),
      validator: (value) => Validators.phone(value, context),
    );
  }
}