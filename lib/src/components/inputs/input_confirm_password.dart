import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class InputConfirmPassword extends StatefulWidget {
  final TextEditingController? controller;
  final TextEditingController ref;
  final String? label;
  final String? hintText;
  final String? labelText;
  final bool? filled;
  final Color? fillColor;
  final int? maxLength;
  final InputBorder? inputBorder;

  final bool readOnly;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;

  const InputConfirmPassword({
    super.key,
    this.label,
    this.controller,
    this.maxLength,
    this.filled = true,
    this.fillColor = Colors.black12,
    this.labelText = 'Confirm password',
    this.hintText = 'Enter your password',
    this.inputBorder = InputBorder.none,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    required this.ref,
    this.readOnly = false,
  });

  @override
  State<InputConfirmPassword> createState() => _InputConfirmPasswordState();
}

class _InputConfirmPasswordState extends State<InputConfirmPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return InputField(
      key: widget.key,
      label: widget.label,
      filled: widget.filled,
      readOnly: widget.readOnly,
      obscureText: _obscureText,
      fillColor: widget.fillColor,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputBorder: widget.inputBorder,
      textInputAction: widget.textInputAction,
      textInputType: TextInputType.visiblePassword,
      hintText: NegoLocalizations.of(context)?.inputConfirmPasswordHintText ?? widget.hintText,
      labelText: NegoLocalizations.of(context)?.inputConfirmPasswordLabelText ?? widget.labelText,
      prefixIcon: Icon(Icons.lock_clock_outlined),
      suffixIcon: IconButton(
        icon: Icon(_obscureText ? Icons.visibility_off_sharp : Icons.visibility_sharp),
        onPressed: () => setState(() {
          _obscureText = !_obscureText;
        }),
      ),
      validator: (value) => Validators.password(value, context),
    );
  }
}