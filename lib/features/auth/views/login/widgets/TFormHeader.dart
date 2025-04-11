import 'package:ecommerce/features/auth/views/signup/SignUpScreen.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Fields
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: TTexts.emailHintText,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: TTexts.passwordHintText,
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(height: TSizes.sm / 2),
            // Remember me and  Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      TTexts.rememberMessage,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Text(
                  TTexts.forgotPasswordMessage,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: TSizes.buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TTexts.login),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: double.infinity,
              height: TSizes.buttonHeight,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(TTexts.signup),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
