import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //All the app colors

  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color backgroundColor = Color(0xFFb0c8ff);

  //Text colors

  static const Color textPrimaryColor = Color(0xFF323334);
  static const Color textSecondaryColor = Color(0xFF6c747f);
  static const Color textWhite = Color(0xFFFFFFFF);

  //Background colors

  static const Color lightColor = Color(0xFFd6d5d8);
  static const Color darkColor = Color(0xFF222222);
  static const Color primaryBackgroundColor = Color(0xFFc3c7ce);

  //Gradient colors
  static const Gradient linearGradient = LinearGradient(
    colors: [Color(0xFFeb9793), Color(0xFFe2bdae), Color(0xFFd9b5a7)],
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
  );

  //Errors and validation colors

  static const Color errorColor = Color(0xFFe03e2f);
  static const Color successColor = Color(0xFF34813b);
  static const Color warningColor = Color(0xFFff8000);
  static const Color infoColor = Color(0xFF1071d9);

  //Background containers colors

  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static const Color darkContainerColor = Color(0xFF222222);

  //Border colors

  static const Color lightBorderColor = Color(0xFFD9D9D9);
  static const Color darkBorderColor = Color(0xFFE6E6E6);

  //Button colors

  static const Color ButtonPrimaryColor = Color(0xFF4a6dff);
  static const Color ButtonSecondaryColor = Color(0xFF6c7480);
  static const Color ButtonDisabledColor = Color(0xFFc3c3c6);

  // Neutral Shades
  static const Color blackColor = Color(0xFF232323);
  static const Color darkenGreyColor = Color(0xfff4f4f4);
  static const Color darkenColor = Color(0xFF939393);
  static const Color greyColor = Color(0xFFE0E0E0);
  static const Color softGreyColor = Color(0xFFF4F4F4);
  static const Color lightGreyColor = Color(0xffF9F9F9);
  static const Color whiteColor = Color(0xFFc3c3c6);
}
