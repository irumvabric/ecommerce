import 'package:ecommerce/features/auth/controllers/onboarding_controller.dart';
import 'package:ecommerce/features/auth/views/onBoarding/widgets/onBordingNextButton.dart'
    show onBordingNextButton;
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onBordingPage.dart';
import 'widgets/onBordingSkipButton.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              onBordingPage(
                image: Timages.facebook,
                title: TTexts.onBordingTitle1,
                subtitle: TTexts.onSubBordingTitle1,
              ),
              onBordingPage(
                image: Timages.Google,
                title: TTexts.onBordingTitle2,
                subtitle: TTexts.onSubBordingTitle2,
              ),
              onBordingPage(
                image: Timages.logoDark,
                title: TTexts.onBordingTitle3,
                subtitle: TTexts.onSubBordingTitle3,
              ),
            ],
          ),

          //Skip Button
          onBordingSkipButton(),

          //navivation Button
          //           Positioned(
          //             bottom: TdeviceUtils.getBottomBarHeight() /,
          //             left: TSizes.defaultSpace,
          //             effet:ExpandingDotsEffet(activeDotcolo)
          //             child: SmoothPageIndicator(controller:PageController(),count:3,)
          // ,
          //           );

          //Circular Button
          onBordingNextButton(),
        ],
      ),
    );
  }
}
