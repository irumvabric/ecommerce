import 'package:ecommerce/features/auth/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart' show TSizes;
import 'package:ecommerce/utils/device/devices_utils.dart' show TdeviceUtils;
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';

class onBordingNextButton extends StatelessWidget {
  const onBordingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TdeviceUtils.getBottomBarHeight() / 2.5,
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(TSizes.spaceBtwItems),
          shape: CircleBorder(),
          backgroundColor: dark ? TColors.darkColor : TColors.primaryColor,
        ),
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
