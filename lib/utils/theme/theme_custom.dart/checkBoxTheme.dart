import 'package:flutter/material.dart';

class TCheckBoxtheme {
  TCheckBoxtheme._();

  static final lightCheckBoxtheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color?>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey;
      }
      if (states.contains(WidgetState.selected)) {
        return Colors.amber;
      }
      return Colors.blue;
    }),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: WidgetStateProperty.all(Colors.white), // Optional
  );

  static final darkCheckBoxtheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color?>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.black;
      }
      if (states.contains(WidgetState.selected)) {
        return Colors.amber[900];
      }
      return Colors.blue[800];
    }),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: WidgetStateProperty.all(Colors.black), // Optional
  );
}
