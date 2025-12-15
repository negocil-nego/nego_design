import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class InputNumber extends StatefulWidget {
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

  const InputNumber({
    super.key,
    this.label,
    this.labelText = 'Número',
    this.hintText = 'Digita o número',
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
  State<InputNumber> createState() => _InputNumberState();
}
class _InputNumberState extends State<InputNumber> {
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
      textInputType: TextInputType.number,
      textInputAction: widget.textInputAction,
      prefixIcon: Icon(Icons.numbers_outlined),
      suffixIcon: Icon(Icons.close),
    );
  }
}