import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A text field for email input with validation.
///
/// Includes email icon, close button, and automatic email validation.
/// Uses email keyboard type for better user experience.
///
/// Example:
/// ```dart
/// InputEmail(
///   controller: emailController,
///   onChanged: (value) => print(value),
/// )
/// ```
class InputEmail extends StatefulWidget {
  /// Controller for the email field.
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
  /// Whether to obscure the text (not recommended for email).
  final bool obscureText;
  /// Maximum number of characters allowed.
  final int? maxLength;
  /// Border style for the input field.
  final InputBorder? inputBorder;
  /// Keyboard action button type.
  final TextInputAction textInputAction;
  /// Callback when the text changes.
  final Function(String)? onChanged;
  /// Creates an email input field.
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