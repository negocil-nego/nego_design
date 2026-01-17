import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

String? validateEmail(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return NegoLocalizations.of(context)?.requiredField('Email') ?? 'Email required';
  }

  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  if (!emailRegex.hasMatch(value)) {
    return NegoLocalizations.of(context)?.invalidField('Email') ?? 'Email invalid';
  }

  return null;
}
