import 'package:ecommerce/utils/theme/theme_custom.dart/ElevatedTheme.dart'
    show TElevatedButtontheme;
import 'package:ecommerce/utils/theme/theme_custom.dart/OutlineButtonTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/TextTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/AppBarTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/TextTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/TextTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/TextTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/TextTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/TextTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/checkBoxTheme.dart';
import 'package:ecommerce/utils/theme/theme_custom.dart/chipTheme.dart'
    show TChiptheme;
import 'package:ecommerce/utils/theme/theme_custom.dart/textFieldTheme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
    textTheme: TTexttheme.lightTexttheme,
    chipTheme: TChiptheme.lightChiptheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: TElevatedButtontheme.lightElevatedButtontheme,
    outlinedButtonTheme: TOutlineButtontheme.lightOutlinedButtontheme,
    inputDecorationTheme: TTextfieldtheme.lightInputDecorationTheme,
    checkboxTheme: TCheckBoxtheme.lightCheckBoxtheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    textTheme: TTexttheme.darkTexttheme,
    chipTheme: TChiptheme.darkChipheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: TElevatedButtontheme.darkElevatedButtontheme,
    outlinedButtonTheme: TOutlineButtontheme.darkOutlinedButtontheme,
    inputDecorationTheme: TTextfieldtheme.darkInputDecorationTheme,
    checkboxTheme: TCheckBoxtheme.darkCheckBoxtheme,
  );
}
