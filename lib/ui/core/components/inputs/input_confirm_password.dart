import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

/// A text field for confirming password input.
///
/// Includes password visibility toggle and validation against a reference password.
/// The field is obscured by default with a toggle icon to show/hide text.
///
/// Example:
/// ```dart
/// InputConfirmPassword(
///   ref: passwordController,
///   controller: confirmPasswordController,
/// )
/// ```
class InputConfirmPassword extends StatefulWidget {
  /// Controller for the confirm password field.
  final TextEditingController? controller;
  /// Reference controller to compare password against.
  final TextEditingController ref;
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
  /// Whether the field is read-only.
  final bool readOnly;
  /// Keyboard action button type.
  final TextInputAction textInputAction;
  /// Callback when the text changes.
  final Function(String)? onChanged;
  /// Creates a confirm password input field.
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