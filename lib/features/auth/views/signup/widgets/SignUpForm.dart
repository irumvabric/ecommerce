import 'package:ecommerce/features/auth/views/verifiedEmail/onBoarding/verifiedEmail.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(TTexts.firstNameHintText),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(TTexts.lastNameHintText),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          // SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              label: Text(TTexts.userNameHintText),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: InputDecoration(
              label: Text(TTexts.emailHintText),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: InputDecoration(
              label: Text(TTexts.phoneHintText),
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: InputDecoration(
              label: Text(TTexts.passwordHintText),
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              SizedBox(width: TSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: TTexts.iAgreeTo,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.whiteColor : TColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.whiteColor : TColors.primaryColor,
                      ),
                      text: TTexts.PrivacyPolicy,
                    ),
                    TextSpan(
                      text: "and",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: TTexts.TermsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.whiteColor : TColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.whiteColor : TColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          SizedBox(
            width: double.infinity,
            height: TSizes.buttonHeight,
            child: OutlinedButton(
              onPressed: () => Get.to(() => VerifiedEmailScreen()),
              child: Text(TTexts.signup),
            ),
          ),
        ],
      ),
    );
  }
}
