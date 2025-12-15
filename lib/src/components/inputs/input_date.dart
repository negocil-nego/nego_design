import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class InputDate extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? labelText;
  final bool? filled;
  final Color? fillColor;
  final bool obscureText;
  final int? maxLength;
  final InputBorder? inputBorder;
  final TextInputType? textInputType;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;

  const InputDate({
    super.key,
    this.label,
    this.hintText,
    this.labelText,
    this.controller,
    this.maxLength,
    this.obscureText = false,
    this.filled = true,
    this.fillColor = Colors.black12,
    this.inputBorder = InputBorder.none,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.onChanged
  });

  @override
  State<InputDate> createState() => _InputDateState();
}

class _InputDateState extends State<InputDate> {
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
      textInputType: TextInputType.text,
      textInputAction: widget.textInputAction,
      prefixIcon: Icon(Icons.calendar_month_outlined),
      suffixIcon: Icon(Icons.close),
    );
  }
}
