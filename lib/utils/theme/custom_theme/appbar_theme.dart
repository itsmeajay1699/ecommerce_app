import "package:flutter/material.dart";

class TAppBarTheme {
  TAppBarTheme._();

  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
      size: 24,
    ),
  );

  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
      size: 24,
    ),
  );
}
