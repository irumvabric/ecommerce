import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart' show TSizes;
import 'package:ecommerce/features/auth/controllers/onboarding_controller.dart';

class onBordingSkipButton extends StatelessWidget {
  const onBordingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TSizes.appBarHeight,
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: Text('Skip'),
      ),
    );
  }
}
