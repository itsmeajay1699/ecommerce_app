import "package:flutter/material.dart";

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lighthipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(
      color: Colors.black,
    ),
    checkmarkColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    selectedColor: Colors.blue,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(
      color: Colors.white,
    ),
    checkmarkColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    selectedColor: Colors.blue,
  );
}
