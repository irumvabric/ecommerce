import 'package:flutter/material.dart';

class TChiptheme {
  TChiptheme._();

  static final lightChiptheme = ChipThemeData(
    elevation: 0,
    backgroundColor: Colors.blue,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    checkmarkColor: Colors.blue,
    labelPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    // side: const BorderSide(color: Colors.blue),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    // padding: const EdgeInsets.symmetric(vertical: 12.0),
  );

  static final darkChipheme = ChipThemeData(
    elevation: 0,
    backgroundColor: Colors.blue,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    checkmarkColor: Colors.blue,
    labelPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    // side: const BorderSide(color: Colors.blue),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    // padding: const EdgeInsets.symmetric(vertical: 12.0),
  );
}
