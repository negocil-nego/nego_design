import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A password input field with visibility toggle and validation.
///
/// Obscures text by default with a toggle button to show/hide.
/// Includes lock icon and automatic password validation.
///
/// Example:
/// ```dart
/// InputPassword(
///   controller: passwordController,
///   onChanged: (value) => validatePassword(value),
/// )
/// ```
class InputPassword extends StatefulWidget {
  /// Controller for the password field.
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
  /// Maximum number of characters allowed.
  final int? maxLength;
  /// Border style for the input field.
  final InputBorder? inputBorder;
  /// Keyboard action button type.
  final TextInputAction textInputAction;
  /// Callback when the text changes.
  final Function(String)? onChanged;
  /// Creates a password input field.
  const InputPassword({
    super.key,
    this.label,
    this.labelText = 'Password',
    this.hintText = 'Enter your password',
    this.controller,
    this.maxLength,
    this.filled = true,
    this.fillColor = Colors.black12,
    this.inputBorder = InputBorder.none,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
  });

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return InputField(
      key: widget.key,
      label: widget.label,
      filled: widget.filled,
      obscureText: _obscureText,
      fillColor: widget.fillColor,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputBorder: widget.inputBorder,
      textInputAction: widget.textInputAction,
      textInputType: TextInputType.visiblePassword,
      hintText: NegoLocalizations.of(context)?.inputPasswordHintText ?? widget.hintText,
      labelText: NegoLocalizations.of(context)?.inputPasswordLabelText ?? widget.labelText,
      prefixIcon: Icon(Icons.lock_outline),
      suffixIcon: IconButton(
        icon: Icon(_obscureText ? Icons.visibility_off_sharp : Icons.visibility_sharp),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
      validator: (value) => Validators.password(value, context),
    );
  }
}