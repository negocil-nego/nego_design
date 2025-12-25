import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

/// An OTP (One-Time Password) input field with multiple digit boxes.
///
/// Displays separate input boxes for each digit of the OTP code.
/// Triggers callbacks when code changes or is fully entered.
///
/// Example:
/// ```dart
/// InputOtp(
///   numberOfFields: 6,
///   onSubmit: (code) => verifyOTP(code),
///   onCodeChanged: (code) => print('Current: $code'),
/// )
/// ```
class InputOtp extends StatelessWidget {
  /// Callback when all fields are filled and submitted.
  final Function(String verificationCode)? onSubmit;
  /// Callback when any field value changes.
  final Function(String code)? onCodeChanged;
  /// Number of OTP digit fields to display.
  final int numberOfFields;
  /// Whether to show fields as separate boxes.
  final bool showFieldAsBox;
  /// Creates an OTP input field.
  const InputOtp({
    super.key,
    this.onSubmit,
    this.onCodeChanged,
    this.numberOfFields = 6,
    this.showFieldAsBox = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return OtpTextField(
      borderRadius: BorderRadius.circular(50),
      contentPadding: EdgeInsets.all(10),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      borderColor: colorScheme.primary,
      showFieldAsBox: showFieldAsBox,
      numberOfFields: numberOfFields,
      onCodeChanged: onCodeChanged,
      onSubmit: onSubmit,
    );
  }
}