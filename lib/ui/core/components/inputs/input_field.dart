import 'package:flutter/material.dart';

/// A customizable text input field with label and validation support.
///
/// Provides a consistent styled text field with optional label above,
/// prefix/suffix icons, and form validation. Supports read-only mode
/// with different styling.
///
/// Example:
/// ```dart
/// InputField(
///   label: 'Username',
///   hintText: 'Enter username',
///   controller: usernameController,
///   validator: (value) => value?.isEmpty ?? true ? 'Required' : null,
/// )
/// ```
class InputField extends StatelessWidget {
  /// Controller for the text field.
  final TextEditingController? controller;
  /// Optional label displayed above the field.
  final String? label;
  /// Placeholder text inside the field.
  final String? hintText;
  /// Label text shown inside the field decoration.
  final String? labelText;
  /// Whether the field has a filled background.
  final bool? filled;
  /// Whether to hide the input text (for passwords).
  final bool obscureText;
  /// Maximum number of characters allowed.
  final int? maxLength;
  /// Background color when filled is true.
  final Color? fillColor;
  /// Border style for the input field.
  final InputBorder? inputBorder;
  /// Keyboard type for the input.
  final TextInputType? textInputType;
  /// Keyboard action button type.
  final TextInputAction? textInputAction;
  /// Callback when the text changes.
  final Function(String)? onChanged;
  /// Validation function for form validation.
  final String? Function(String?)? validator;
  /// Icon displayed at the start of the field.
  final Widget? prefixIcon;
  /// Icon or widget displayed at the end of the field.
  final Widget? suffixIcon;
  /// Whether the field is read-only.
  final bool readOnly;
  /// Creates a customizable input field.
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
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final textFormField = TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: readOnly ? null : labelText,
        fillColor: readOnly ? colorScheme.primary.withAlpha(90) : fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: filled,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      obscureText: obscureText,
      onChanged: onChanged,
      maxLength: maxLength,
      validator: validator,
      readOnly: readOnly,
    );

    return label == null || label!.isEmpty ? textFormField : Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(label!), textFormField],
    );
  }
}