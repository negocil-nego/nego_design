import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class Validators {
  static String? emailOrPhone(String? value, BuildContext context) {
    return validateEmailOrPhone(value, context);
  }
  static String? email(String? value, BuildContext context) {
    return validateEmail(value, context);
  }
  static String? phone(String? value, BuildContext context) {
   return validatePhone(value, context);
  }
  static String? password(String? value, BuildContext context) {
    return validatePassword(value, context);
  }
  static String? Function(String?) combine(
      List<String? Function(String?)> validators
      ) {
    return (value) {
      for (final validator in validators) {
        final error = validator(value);
        if (error != null) return error;
      }
      return null;
    };
  }
}