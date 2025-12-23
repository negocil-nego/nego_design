import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

String? validateEmailOrPhone(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return NegoLocalizations.of(context)?.requiredField('Email or Phone') ?? 'Email or Phone required';
  }
  if (value.contains('@')) {
    return validateEmail(value, context);
  }
  return validatePhone(value, context);
}