import 'package:ecommerce/features/auth/views/login/login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  /// Update current Index page on scroll
  void updatePageIndicator(index) => currentIndex.value = index;

  /// Update current Index page on scroll
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current Index & jump to the next page
  void nextPage() {
    if (currentIndex.value < 2) {
      currentIndex.value++;
      pageController.jumpToPage(currentIndex.value);
    } else {
      Get.offAll(LoginScreen());
    }
  }

  /// Update current Index & jump to the last page
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
