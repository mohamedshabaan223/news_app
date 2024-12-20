import 'package:flutter/material.dart';

class Apptheme {
  static const Color green = Color(0xFF39A552);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF303030);
  static const Color gray =Color(0xFF4F5A69);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
           bottomRight: Radius.circular(32),
        )),
      centerTitle: true,
      color: green,
      foregroundColor: white,
    ),
   
    
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: white,
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: gray,
      )
    ),
    
  );
}
