import 'package:ecommerce/common/styles/paddingAppBarHeight.dart';
import 'package:ecommerce/common/widgets/login_signup/OrSignInWith.dart';
import 'package:ecommerce/common/widgets/login_signup/TLoginSocials.dart';
import 'package:ecommerce/features/auth/views/signup/widgets/SignUpForm.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.appBarHeightPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signUpMessage,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwInputFields),

              //Form to sign up
              TSignUpForm(),
              SizedBox(height: TSizes.spaceBtwInputFields),

              //Sign Up with
              TLoginOrSignInWith(text: TTexts.orSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwInputFields),

              //Sign Up Google or Facebook
              TLoginSocials(),
            ],
          ),
        ),
      ),
    );
  }
}
