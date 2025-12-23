// Validação principal
import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

String? validatePassword(String? value, BuildContext context) {
  return validatePasswordNotEmpty(value, context) ??
      validatePassword6MinLength(value!, context) ??
      validatePassword1Letter(value!, context) ??
      validatePassword1Number(value!, context) ??
      validatePassword1Symbol(value!, context);
}

String? validatePasswordNotEmpty(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return NegoLocalizations.of(context)?.requiredField('Password') ??
        'Password required';
  }
  return null;
}

String? validatePassword6MinLength(String value, BuildContext context) {
  if (value.length < 6) {
    return NegoLocalizations.of(context)?.validatePasswordMin6 ??
        'The password must be at least 6 characters long';
  }
  return null;
}

String? validatePassword1Letter(String value, BuildContext context) {
  if (!RegExp(r'[A-Z]').hasMatch(value)) {
    return NegoLocalizations.of(context)?.validatePassword1Letter ??
        'The password must contain at least 1 uppercase letter';
  }
  return null;
}

String? validatePassword1Number(String value, BuildContext context) {
  if (!RegExp(r'\d').hasMatch(value)) {
    return NegoLocalizations.of(context)?.validatePassword1Number ??
        'The password must contain at least 1 number';
  }
  return null;
}

String? validatePassword1Symbol(String value, BuildContext context) {
  if (!RegExp(r'[^\w\s]').hasMatch(value)) {
    return NegoLocalizations.of(context)?.validatePassword1Symbol ??
        'The password must contain at least 1 symbol';
  }
  return null;
}