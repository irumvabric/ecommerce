import 'package:ecommerce/features/auth/views/verifiedEmail/onBoarding/widgets/VerificationWidget.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class VerifiedEmailScreen extends StatelessWidget {
  const VerifiedEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Verificationwidget(
        image: Timages.Google,
        title: TTexts.VerifyEmail,
        subtitle: TTexts.emailSupport,
        message: TTexts.VerifyEmailMessage,
      ),
    );
  }
}
