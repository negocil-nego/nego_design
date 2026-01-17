import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A phone number input field with validation.
///
/// Uses phone keyboard type and validates phone number format.
/// Includes phone icon and close button for clearing input.
///
/// Example:
/// ```dart
/// InputPhone(
///   controller: phoneController,
///   onChanged: (value) => handlePhoneInput(value),
/// )
/// ```
class InputPhone extends StatefulWidget {
  /// Controller for the phone field.
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
  final TextInputAction textInputAction;
  /// Callback when the text changes.
  final Function(String)? onChanged;
  /// Creates a phone number input field.
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
    this.onChanged,
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
      textInputType: TextInputType.phone,
      textInputAction: widget.textInputAction,
      hintText: NegoLocalizations.of(context)?.inputPhoneHintText ?? widget.hintText,
      labelText: NegoLocalizations.of(context)?.inputPhoneLabelText ?? widget.labelText,
      prefixIcon: Icon(Icons.phone_android_rounded),
      suffixIcon: Icon(Icons.close),
      validator: (value) => Validators.phone(value, context),
    );
  }
}