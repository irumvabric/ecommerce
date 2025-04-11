import 'package:ecommerce/common/styles/paddingAppBarHeight.dart';
import 'package:ecommerce/common/widgets/login_signup/OrSignInWith.dart';
import 'package:ecommerce/common/widgets/login_signup/TLoginSocials.dart';
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
              //Form to sign up
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(TTexts.nameHintText),
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(width: TSizes.spaceBtwItems),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(TTexts.emailHintText),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
