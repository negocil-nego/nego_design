import 'package:nego_design/_import.dart';

String? validateEmailOrPhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Campo obrigatório';
  }
  if (value.contains('@')) {
    return validateEmail(value);
  }
  return validatePhone(value);
}