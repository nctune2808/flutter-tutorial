import 'package:flutter/material.dart';

class NeumorphismTheme {
  static const Color primaryColor = Color(0xFFF15923);
  static const Color secondaryColor = Color(0xFFBBAE92);

  static ThemeData get themeData {
    return ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F3EC),
        textTheme: const TextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0,
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            padding: const EdgeInsets.all(5),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
        drawerTheme: const DrawerThemeData(
          shape: RoundedRectangleBorder(),
          backgroundColor: Colors.white,
          elevation: 0,
        ));
  }
}
