import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A text field for email or phone input with validation.
///
/// Accepts either email or phone number format. Includes a clear button
/// to reset the field and validates against both formats.
///
/// Example:
/// ```dart
/// InputEmailOrPhone(
///   controller: contactController,
///   onChanged: (value) => handleInput(value),
/// )
/// ```
class InputEmailOrPhone extends StatefulWidget {
  /// Controller for the email or phone field.
  final TextEditingController? controller;
  /// Optional label displayed above the field.
  final String? label;
  /// Placeholder text inside the field.
  final String? hintText;
  /// Label text for the field.
  final String? labelText;
  /// Whether the field has a filled background.
  final bool? filled;
  /// Background color when filled is true.
  final Color? fillColor;
  /// Whether to obscure the text.
  final bool obscureText;
  /// Maximum number of characters allowed.
  final int? maxLength;
  /// Border style for the input field.
  final InputBorder? inputBorder;
  /// Keyboard action button type.
  final TextInputAction? textInputAction;
  /// Callback when the text changes.
  final Function(String)? onChanged;
  /// Creates an email or phone input field.
  const InputEmailOrPhone({
    super.key,
    this.label,
    this.labelText = 'Email or Telephone',
    this.hintText = 'Enter your email or contact details',
    this.controller,
    this.maxLength,
    this.obscureText = false,
    this.filled = true,
    this.fillColor,
    this.inputBorder,
    this.textInputAction,
    this.onChanged,
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
      fillColor: widget.fillColor,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputBorder: widget.inputBorder,
      obscureText: widget.obscureText,
      textInputType: TextInputType.text,
      textInputAction: widget.textInputAction,
      hintText: NegoLocalizations.of(context)?.inputEmailOrPhoneHintText ?? widget.hintText,
      labelText: NegoLocalizations.of(context)?.inputEmailOrPhoneLabelText ?? widget.labelText,
      prefixIcon: Icon(Icons.perm_phone_msg_outlined),
      suffixIcon: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => widget.controller?.clear(),
      ),
      validator: (value) => Validators.emailOrPhone(value, context),
    );
  }
}