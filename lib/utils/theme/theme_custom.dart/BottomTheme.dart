import 'package:flutter/material.dart';

class TButtonSheettheme {
  TButtonSheettheme._();

  static final lightButtonSheettheme = BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    backgroundColor: Colors.white,
  );

  static final darkButtonSheettheme = BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    backgroundColor: Colors.black,
  );
}
