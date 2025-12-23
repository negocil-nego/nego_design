// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'nego_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class NegoLocalizationsPt extends NegoLocalizations {
  NegoLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get getStarted => 'Comece agora';

  @override
  String get enter => 'Entrar';

  @override
  String get create => 'Criar';

  @override
  String enterWith(Object method) {
    return 'Entrar com $method';
  }

  @override
  String get registration => 'Cadastramento';

  @override
  String get authentication => 'Autenticação';

  @override
  String requiredField(Object field) {
    return '$field obrigatório';
  }

  @override
  String invalidField(Object field) {
    return '$field inválido';
  }

  @override
  String get withoutAccount => 'Entra sem conta';

  @override
  String get next => 'Avançar';

  @override
  String get confirm => 'Confirma';

  @override
  String get loginDesc =>
      'Faça o processo de autenticação, forneça as suas credências';

  @override
  String get loginForgotPassword => 'Esqueci minha senha?';

  @override
  String get loginNotHaveAccount => 'Não tenho conta?';

  @override
  String get registerDesc =>
      'Faça o processo de criação da sua conta, preencha os dados';

  @override
  String get registerAlreadyHaveAccount => 'Já tenho conta?';

  @override
  String get forgetPasswordTitle => 'Esquece a minha senha';

  @override
  String get forgetPasswordDesc =>
      'Inicializa o processo para recuperação de senha';

  @override
  String get forgetPasswordValidateForm => 'Preencha as informações';

  @override
  String get forgetPasswordValidateOtp => 'Validação do código otp';

  @override
  String get forgetPasswordResetPassword => 'Alteração da senha';

  @override
  String get forgetPasswordStepDesc =>
      'Para concluir todo o processo de recuperação de senha deves concluir todos processos abaixo';

  @override
  String get otpVerificationTitle => 'Validação do otp';

  @override
  String get otpVerificationDesc =>
      'Verifica o código otp foi enviado para o email ou contato informado';

  @override
  String get otpVerificationResendCode => 'Reenviar código';

  @override
  String get resetPasswordTitle => 'Alterar a senha';

  @override
  String get resetPasswordDesc =>
      'Preencha os detalhes para alterar a sua palavra-passe, guarde-a num local seguro ou ative um dos nossos métodos de segurança';

  @override
  String get orDividerText => 'Ou';

  @override
  String get inputEmailOrPhoneLabelText => 'Email ou Telephone';

  @override
  String get inputEmailOrPhoneHintText => 'Digita o email ou contato';

  @override
  String get inputPasswordLabelText => 'Senha';

  @override
  String get inputPasswordHintText => 'Digite sua senha';

  @override
  String get inputConfirmPasswordLabelText => 'Confirma a senha';

  @override
  String get inputConfirmPasswordHintText => 'Digite sua senha';

  @override
  String get inputPhoneLabelText => 'Telefone';

  @override
  String get inputPhoneHintText => 'Digite seu telefone';

  @override
  String get inputEmailLabelText => 'Email';

  @override
  String get inputEmailHintText => 'Digite seu email';

  @override
  String get validatePhoneInvalidPlus =>
      'Formato inválido. Use: +código número';

  @override
  String get validatePhoneShort => 'Telefone muito curto';

  @override
  String get validatePhoneLong => 'Telefone muito longo';

  @override
  String get validatePhoneStartPlus =>
      'Telefone deve conter apenas números ou começar com +';

  @override
  String get validatePhoneMin8 => 'Telefone muito curto (mínimo 8 dígitos)';

  @override
  String get validatePhoneMax15 => 'Telefone muito longo (máximo 15 dígitos)';

  @override
  String get validatePasswordMin6 => 'A senha deve ter no mínimo 6 caracteres';

  @override
  String get validatePassword1Letter =>
      'A senha deve conter pelo menos 1 letra maiúscula';

  @override
  String get validatePassword1Number =>
      'A senha deve conter pelo menos 1 número';

  @override
  String get validatePassword1Symbol =>
      'A senha deve conter pelo menos 1 símbolo';

  @override
  String get resetPasswordMin6 => 'Mínimo 6 caracteres';

  @override
  String get resetPassword1Letter => 'Um letra maiúscula';

  @override
  String get resetPassword1Number => 'Pelo menos 1 número';

  @override
  String get resetPassword1Symbol => 'Pelo menos 1 símbolo';

  @override
  String get resetPasswordEquals => 'Senhas são iguais';
}
