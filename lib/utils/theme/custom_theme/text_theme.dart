import "package:flutter/material.dart";

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontSize: 14.0,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontSize: 12.0,
    ),
    bodySmall: const TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontSize: 10.0,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: Colors.white,
      fontSize: 12.0,
    ),
    bodySmall: const TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 10.0,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );
}
