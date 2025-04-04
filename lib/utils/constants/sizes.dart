import 'package:flutter/material.dart';

class TSizes {
  TSizes._();

  //Margin and Padding Sizes

  static const double sx = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double ls = 24.0;
  static const double xl = 32.0;

  //Icon Sizes

  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLG = 32.0;

  //Font Sizes

  static const double fontSizeSm = 14.0;
  static const double fontSizeMd = 16.0;
  static const double fontSizeLG = 18.0;

  //Button Sizes

  static const double buttonHeight = 18.0;
  static const double buttonRadius = 12.0;
  static const double buttonWidth = 120.0;

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
