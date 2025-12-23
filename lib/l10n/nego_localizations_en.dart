// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'nego_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class NegoLocalizationsEn extends NegoLocalizations {
  NegoLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get getStarted => 'Get Started';

  @override
  String get enter => 'Enter';

  @override
  String get create => 'Create';

  @override
  String enterWith(Object method) {
    return 'Enter with $method';
  }

  @override
  String get registration => 'Registration';

  @override
  String get authentication => 'Authentication';

  @override
  String requiredField(Object field) {
    return '$field required';
  }

  @override
  String invalidField(Object field) {
    return '$field invalid';
  }

  @override
  String get withoutAccount => 'Log in without an account';

  @override
  String get next => 'Next';

  @override
  String get confirm => 'Confirm';

  @override
  String get loginDesc =>
      'Complete the authentication process, provide your credentials';

  @override
  String get loginForgotPassword => 'Forgot my password?';

  @override
  String get loginNotHaveAccount => 'I don\'t have an account?';

  @override
  String get registerDesc =>
      'Complete the account creation process and fill in your details';

  @override
  String get registerAlreadyHaveAccount => 'Do I already have an account?';

  @override
  String get forgetPasswordTitle => 'Forgot my password';

  @override
  String get forgetPasswordDesc => 'Initiates the password recovery process';

  @override
  String get forgetPasswordValidateForm => 'Fill in the information';

  @override
  String get forgetPasswordValidateOtp => 'OTP code validation';

  @override
  String get forgetPasswordResetPassword => 'Changing your password';

  @override
  String get forgetPasswordStepDesc =>
      'To complete the password recovery process, you must complete all of the steps below.';

  @override
  String get otpVerificationTitle => 'Validation of the otp';

  @override
  String get otpVerificationDesc =>
      'Check the OTP code sent to the email address or contact number provided';

  @override
  String get otpVerificationResendCode => 'Resend code';

  @override
  String get resetPasswordTitle => 'Change password';

  @override
  String get resetPasswordDesc =>
      'Fill in the details to change your password, save your password in a safe place, or activate one of our security methods';

  @override
  String get orDividerText => 'Or';

  @override
  String get inputEmailOrPhoneLabelText => 'Email or Telephone';

  @override
  String get inputEmailOrPhoneHintText => 'Enter your email or phone number';

  @override
  String get inputPasswordLabelText => 'Password';

  @override
  String get inputPasswordHintText => 'Enter your password';

  @override
  String get inputConfirmPasswordLabelText => 'Confirm password';

  @override
  String get inputConfirmPasswordHintText => 'Enter your password';

  @override
  String get inputPhoneLabelText => 'Contact';

  @override
  String get inputPhoneHintText => 'Enter your phone number';

  @override
  String get inputEmailLabelText => 'Email';

  @override
  String get inputEmailHintText => 'Enter your email';

  @override
  String get validatePhoneInvalidPlus => 'Invalid format. Use: +code number';

  @override
  String get validatePhoneShort => 'Phone number too short';

  @override
  String get validatePhoneLong => 'Phone number too long';

  @override
  String get validatePhoneStartPlus =>
      'The phone number must contain only numbers or start with +';

  @override
  String get validatePhoneMin8 => 'Phone number too short (minimum 8 digits)';

  @override
  String get validatePhoneMax15 => 'Phone number too long (maximum 15 digits)';

  @override
  String get validatePasswordMin6 =>
      'The password must be at least 6 characters long';

  @override
  String get validatePassword1Letter =>
      'The password must contain at least 1 uppercase letter';

  @override
  String get validatePassword1Number =>
      'The password must contain at least 1 number';

  @override
  String get validatePassword1Symbol =>
      'The password must contain at least 1 symbol';

  @override
  String get resetPasswordMin6 => 'Minimum 6 characters';

  @override
  String get resetPassword1Letter => 'A capital letter';

  @override
  String get resetPassword1Number => 'At least 1 number';

  @override
  String get resetPassword1Symbol => 'At least 1 symbol';

  @override
  String get resetPasswordEquals => 'Passwords are the same';
}
