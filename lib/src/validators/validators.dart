import 'package:nego_design/_import.dart';

class Validators {
  /// Valida se é email ou telefone válido
  static String? emailOrPhone(String? value) {
    return validateEmailOrPhone(value);
  }
  static String? email(String? value) {
    return validateEmail(value);
  }
  /// Valida formato de telefone (com ou sem código do país)
  static String? phone(String? value) {
   return validatePhone(value);
  }

  static String? password(String? value) {
    return validatePassword(value);
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