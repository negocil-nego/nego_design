import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'nego_localizations_en.dart';
import 'nego_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of NegoLocalizations
/// returned by `NegoLocalizations.of(context)`.
///
/// Applications need to include `NegoLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/nego_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: NegoLocalizations.localizationsDelegates,
///   supportedLocales: NegoLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the NegoLocalizations.supportedLocales
/// property.
abstract class NegoLocalizations {
  NegoLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static NegoLocalizations? of(BuildContext context) {
    return Localizations.of<NegoLocalizations>(context, NegoLocalizations);
  }

  static const LocalizationsDelegate<NegoLocalizations> delegate =
      _NegoLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get enter;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @enterWith.
  ///
  /// In en, this message translates to:
  /// **'Enter with {method}'**
  String enterWith(Object method);

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get registration;

  /// No description provided for @authentication.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get authentication;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'{field} required'**
  String requiredField(Object field);

  /// No description provided for @invalidField.
  ///
  /// In en, this message translates to:
  /// **'{field} invalid'**
  String invalidField(Object field);

  /// No description provided for @withoutAccount.
  ///
  /// In en, this message translates to:
  /// **'Log in without an account'**
  String get withoutAccount;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @loginDesc.
  ///
  /// In en, this message translates to:
  /// **'Complete the authentication process, provide your credentials'**
  String get loginDesc;

  /// No description provided for @loginForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot my password?'**
  String get loginForgotPassword;

  /// No description provided for @loginNotHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'I don\'t have an account?'**
  String get loginNotHaveAccount;

  /// No description provided for @registerDesc.
  ///
  /// In en, this message translates to:
  /// **'Complete the account creation process and fill in your details'**
  String get registerDesc;

  /// No description provided for @registerAlreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Do I already have an account?'**
  String get registerAlreadyHaveAccount;

  /// No description provided for @forgetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Forgot my password'**
  String get forgetPasswordTitle;

  /// No description provided for @forgetPasswordDesc.
  ///
  /// In en, this message translates to:
  /// **'Initiates the password recovery process'**
  String get forgetPasswordDesc;

  /// No description provided for @forgetPasswordValidateForm.
  ///
  /// In en, this message translates to:
  /// **'Fill in the information'**
  String get forgetPasswordValidateForm;

  /// No description provided for @forgetPasswordValidateOtp.
  ///
  /// In en, this message translates to:
  /// **'OTP code validation'**
  String get forgetPasswordValidateOtp;

  /// No description provided for @forgetPasswordResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Changing your password'**
  String get forgetPasswordResetPassword;

  /// No description provided for @forgetPasswordStepDesc.
  ///
  /// In en, this message translates to:
  /// **'To complete the password recovery process, you must complete all of the steps below.'**
  String get forgetPasswordStepDesc;

  /// No description provided for @otpVerificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation of the otp'**
  String get otpVerificationTitle;

  /// No description provided for @otpVerificationDesc.
  ///
  /// In en, this message translates to:
  /// **'Check the OTP code sent to the email address or contact number provided'**
  String get otpVerificationDesc;

  /// No description provided for @otpVerificationResendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get otpVerificationResendCode;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get resetPasswordTitle;

  /// No description provided for @resetPasswordDesc.
  ///
  /// In en, this message translates to:
  /// **'Fill in the details to change your password, save your password in a safe place, or activate one of our security methods'**
  String get resetPasswordDesc;

  /// No description provided for @orDividerText.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get orDividerText;

  /// No description provided for @inputEmailOrPhoneLabelText.
  ///
  /// In en, this message translates to:
  /// **'Email or Telephone'**
  String get inputEmailOrPhoneLabelText;

  /// No description provided for @inputEmailOrPhoneHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter your email or phone number'**
  String get inputEmailOrPhoneHintText;

  /// No description provided for @inputPasswordLabelText.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get inputPasswordLabelText;

  /// No description provided for @inputPasswordHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get inputPasswordHintText;

  /// No description provided for @inputConfirmPasswordLabelText.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get inputConfirmPasswordLabelText;

  /// No description provided for @inputConfirmPasswordHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get inputConfirmPasswordHintText;

  /// No description provided for @inputPhoneLabelText.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get inputPhoneLabelText;

  /// No description provided for @inputPhoneHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get inputPhoneHintText;

  /// No description provided for @inputEmailLabelText.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get inputEmailLabelText;

  /// No description provided for @inputEmailHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get inputEmailHintText;

  /// No description provided for @validatePhoneInvalidPlus.
  ///
  /// In en, this message translates to:
  /// **'Invalid format. Use: +code number'**
  String get validatePhoneInvalidPlus;

  /// No description provided for @validatePhoneShort.
  ///
  /// In en, this message translates to:
  /// **'Phone number too short'**
  String get validatePhoneShort;

  /// No description provided for @validatePhoneLong.
  ///
  /// In en, this message translates to:
  /// **'Phone number too long'**
  String get validatePhoneLong;

  /// No description provided for @validatePhoneStartPlus.
  ///
  /// In en, this message translates to:
  /// **'The phone number must contain only numbers or start with +'**
  String get validatePhoneStartPlus;

  /// No description provided for @validatePhoneMin8.
  ///
  /// In en, this message translates to:
  /// **'Phone number too short (minimum 8 digits)'**
  String get validatePhoneMin8;

  /// No description provided for @validatePhoneMax15.
  ///
  /// In en, this message translates to:
  /// **'Phone number too long (maximum 15 digits)'**
  String get validatePhoneMax15;

  /// No description provided for @validatePasswordMin6.
  ///
  /// In en, this message translates to:
  /// **'The password must be at least 6 characters long'**
  String get validatePasswordMin6;

  /// No description provided for @validatePassword1Letter.
  ///
  /// In en, this message translates to:
  /// **'The password must contain at least 1 uppercase letter'**
  String get validatePassword1Letter;

  /// No description provided for @validatePassword1Number.
  ///
  /// In en, this message translates to:
  /// **'The password must contain at least 1 number'**
  String get validatePassword1Number;

  /// No description provided for @validatePassword1Symbol.
  ///
  /// In en, this message translates to:
  /// **'The password must contain at least 1 symbol'**
  String get validatePassword1Symbol;

  /// No description provided for @resetPasswordMin6.
  ///
  /// In en, this message translates to:
  /// **'Minimum 6 characters'**
  String get resetPasswordMin6;

  /// No description provided for @resetPassword1Letter.
  ///
  /// In en, this message translates to:
  /// **'A capital letter'**
  String get resetPassword1Letter;

  /// No description provided for @resetPassword1Number.
  ///
  /// In en, this message translates to:
  /// **'At least 1 number'**
  String get resetPassword1Number;

  /// No description provided for @resetPassword1Symbol.
  ///
  /// In en, this message translates to:
  /// **'At least 1 symbol'**
  String get resetPassword1Symbol;

  /// No description provided for @resetPasswordEquals.
  ///
  /// In en, this message translates to:
  /// **'Passwords are the same'**
  String get resetPasswordEquals;
}

class _NegoLocalizationsDelegate
    extends LocalizationsDelegate<NegoLocalizations> {
  const _NegoLocalizationsDelegate();

  @override
  Future<NegoLocalizations> load(Locale locale) {
    return SynchronousFuture<NegoLocalizations>(
      lookupNegoLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_NegoLocalizationsDelegate old) => false;
}

NegoLocalizations lookupNegoLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return NegoLocalizationsEn();
    case 'pt':
      return NegoLocalizationsPt();
  }

  throw FlutterError(
    'NegoLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
