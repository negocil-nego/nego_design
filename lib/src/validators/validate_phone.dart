String? validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Telefone obrigatório';
  }

  final cleaned = value.replaceAll(RegExp(r'[\s\-\(\)]'), '');

  if (cleaned.startsWith('+')) {
    if (!RegExp(r'^\+\d+$').hasMatch(cleaned)) {
      return 'Formato inválido. Use: +código número';
    }
    if (cleaned.length < 8) {
      return 'Telefone muito curto';
    }
    if (cleaned.length > 20) {
      return 'Telefone muito longo';
    }

    return null;
  }

  if (!RegExp(r'^\d+$').hasMatch(cleaned)) {
    return 'Telefone deve conter apenas números ou começar com +';
  }

  if (cleaned.length < 8) {
    return 'Telefone muito curto (mínimo 8 dígitos)';
  }

  if (cleaned.length > 15) {
    return 'Telefone muito longo (máximo 15 dígitos)';
  }

  return null;
}
