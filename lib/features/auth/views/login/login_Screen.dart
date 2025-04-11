import 'package:ecommerce/common/styles/paddingAppBarHeight.dart';
import 'package:ecommerce/common/widgets/login_signup/OrSignInWith.dart';
import 'package:ecommerce/features/auth/views/login/widgets/TFormHeader.dart';
import 'package:ecommerce/features/auth/views/login/widgets/TLoginHeader.dart';
import 'package:ecommerce/common/widgets/login_signup/TLoginSocials.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              //Login header
              TLoginHeader(),
              //Form to login
              TLoginForm(),
              // SizedBox(height: TSizes.spaceBtwItems),
              TLoginOrSignInWith(text: TTexts.orSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwItems),
              TLoginSocials(),
            ],
          ),
        ),
      ),
    );
  }
}
