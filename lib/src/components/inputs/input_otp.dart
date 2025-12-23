import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class InputOtp extends StatelessWidget {
  final Function(String verificationCode)? onSubmit;
  final Function(String code)? onCodeChanged;
  final int numberOfFields;
  const InputOtp({
    super.key,
    this.onCodeChanged,
    this.onSubmit,
    this.numberOfFields = 6,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return OtpTextField(
      showFieldAsBox: true,
      borderRadius: BorderRadius.circular(50),
      contentPadding: EdgeInsets.all(10),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      numberOfFields: numberOfFields,
      onCodeChanged: onCodeChanged,
      borderColor: colorScheme.primary,
      onSubmit: onSubmit,
    );
  }
}
