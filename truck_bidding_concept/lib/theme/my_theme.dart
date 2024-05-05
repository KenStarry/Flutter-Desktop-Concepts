import 'package:flutter/material.dart';

import 'colors.dart';
import 'material_generator.dart';

class MyTheme {

  /// Light Theme
  static ThemeData get lightTheme => ThemeData(
      primaryColor: accent,
      primaryColorLight: darkGreenBackground,
      // generateMaterialColor(accent).shade50
      primarySwatch: generateMaterialColor(accent),
      scaffoldBackgroundColor: greenBackground,
      iconTheme: const IconThemeData(color: textWhite300),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: accent, backgroundColor: Colors.transparent)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: accent, foregroundColor: textWhite700),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: accent, foregroundColor: textWhite500)),
      textSelectionTheme: TextSelectionThemeData(cursorColor: accent),
      inputDecorationTheme: InputDecorationTheme(
          iconColor: accent,
          prefixIconColor: textWhite300,
          suffixIconColor: textWhite300,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: accent))),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: darkGreenBackground,
        elevation: 0,
        dragHandleColor: textWhite500,
        showDragHandle: true,
        surfaceTintColor: darkGreenBackground,
        modalBackgroundColor: darkGreenBackground,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      ),
      useMaterial3: true,
      fontFamily: 'DMSans',
      textTheme: const TextTheme(
        bodySmall: TextStyle(
            fontSize: 11, fontWeight: FontWeight.w500, color: textWhite500),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: textWhite500),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textWhite700),
        titleSmall: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w700, color: textWhite700),
        titleMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: textWhite900),
        titleLarge: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: textWhite900),
      ));
}
