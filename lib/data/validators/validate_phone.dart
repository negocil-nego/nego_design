import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

String? validatePhone(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return NegoLocalizations.of(context)?.requiredField('Phone number') ?? 'Phone number required';
  }

  final cleaned = value.replaceAll(RegExp(r'[\s\-\(\)]'), '');

  if (cleaned.startsWith('+')) {
    if (!RegExp(r'^\+\d+$').hasMatch(cleaned)) {
      return NegoLocalizations.of(context)?.validatePhoneInvalidPlus ?? 'Invalid format. Use: +code number';
    }
    if (cleaned.length < 8) {
      return NegoLocalizations.of(context)?.validatePhoneShort ?? 'Phone number too short';
    }
    if (cleaned.length > 20) {
      return NegoLocalizations.of(context)?.validatePhoneLong ?? 'Phone number too long';
    }

    return null;
  }

  if (!RegExp(r'^\d+$').hasMatch(cleaned)) {
    return NegoLocalizations.of(context)?.validatePhoneStartPlus ?? 'The phone number must contain only numbers or start with +';
  }

  if (cleaned.length < 8) {
    return NegoLocalizations.of(context)?.validatePhoneMin8 ?? 'Phone number too short (minimum 8 digits)';
  }

  if (cleaned.length > 15) {
    return NegoLocalizations.of(context)?.validatePhoneMax15 ?? 'Phone number too long (maximum 15 digits)';
  }

  return null;
}
