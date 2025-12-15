import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? labelText;
  final bool? filled;
  final bool obscureText;
  final int? maxLength;
  final Color? fillColor;
  final InputBorder? inputBorder;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const InputField({
    super.key,
    this.label,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.controller,
    this.filled = true,
    this.obscureText = false,
    this.maxLength,
    this.fillColor,
    this.inputBorder,
    this.textInputType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    final textField = TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        labelText: widget.labelText,
        fillColor: widget.fillColor,
        filled: widget.filled,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        suffixIcon: widget.suffixIcon,
      ),
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      maxLength: widget.maxLength,
    );

    return widget.label == null || widget.label!.isEmpty
        ? textField
        : Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(widget.label!), textField],
          );
  }
}
