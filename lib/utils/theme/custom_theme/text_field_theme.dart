import "package:flutter/material.dart";

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
    ),
    hintStyle: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
  );

  static InputDecorationTheme darkTextFormFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
    ),
    hintStyle: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white12,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
  );
}
