String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'A senha é obrigatória';
  }

  if (value.length < 6) {
    return 'A senha deve ter no mínimo 6 caracteres';
  }

  if (!RegExp(r'[A-Z]').hasMatch(value)) {
    return 'A senha deve conter pelo menos 1 letra maiúscula';
  }

  if (!RegExp(r'\d').hasMatch(value)) {
    return 'A senha deve conter pelo menos 1 número';
  }

  if (!RegExp(r'[^\w\s]').hasMatch(value)) {
    return 'A senha deve conter pelo menos 1 símbolo';
  }

  return null; // senha válida
}
