import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
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
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;

  const InputField({
    super.key,
    this.label,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.controller,
    this.filled = true,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLength,
    this.fillColor,
    this.inputBorder,
    this.textInputType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final textFormField = TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText:  readOnly ? null : labelText,
        fillColor: readOnly ? colorScheme.primary.withAlpha(90) :  fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: filled,
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      obscureText: obscureText,
      onChanged: onChanged,
      maxLength: maxLength,
      validator: validator,
      readOnly: readOnly,
    );

    return label == null || label!.isEmpty
        ? textFormField
        : Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(label!), textFormField],
          );
  }
}
