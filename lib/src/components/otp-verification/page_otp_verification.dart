import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nego_design/_import.dart';

class PageOtpVerification extends StatefulWidget {
  final String? pageNamedHome;
  final Function()? onResendOtp;
  const PageOtpVerification({super.key, this.pageNamedHome, this.onResendOtp});

  @override
  State<PageOtpVerification> createState() => _PageOtpVerificationState();
}

class _PageOtpVerificationState extends State<PageOtpVerification> {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      visibleBackButton: true,
      title: NegoLocalizations.of(context)?.otpVerificationTitle ?? 'Validation of the otp',
      description: NegoLocalizations.of(context)?.otpVerificationDesc ?? 'Check the OTP code sent to the email address or contact number provided',
      child: ListView(
        shrinkWrap: true,
        children: [
          Lottie.asset(
            NegoAppImage.verificationCode,
            width: 200,
            height: 200,
            package: 'nego_design',
          ),
          const SizedBox(height: 10),
          InputOtp(),
          const SizedBox(height: 10),
          TextButton(
            onPressed: widget.onResendOtp,
            child: Text(NegoLocalizations.of(context)?.otpVerificationResendCode ?? 'Resend code')
          ),
          const SizedBox(height: 10),
          BaseContainerButton(
            label: NegoLocalizations.of(context)?.next ?? 'Next',
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          LinkEnterWithoutAccount(pageNamedHome: widget.pageNamedHome),
        ],
      ),
    );
  }
}
