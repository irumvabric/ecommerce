import 'package:ecommerce/features/auth/views/login/login_Screen.dart';
import 'package:ecommerce/features/auth/views/signup/SignUpScreen.dart';
import 'package:ecommerce/features/auth/views/success/successScreen.dart';
import 'package:ecommerce/features/auth/views/verifiedEmail/onBoarding/verifiedEmail.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          elevation: 0,
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor:
              dark ? TColors.darkContainerColor : TColors.primaryColor,
          indicatorColor: dark ? TColors.whiteColor : TColors.darkColor,

          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home, color: Colors.white),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.store, color: Colors.white),
              label: "Store",
            ),
            NavigationDestination(
              icon: Icon(Icons.place, color: Colors.white),
              label: "Wishlist",
            ),
            NavigationDestination(
              icon: Icon(Icons.person, color: Colors.white),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    LoginScreen(),
    SignUpScreen(),
    Successscreen(),
    VerifiedEmailScreen(),
  ];
}
