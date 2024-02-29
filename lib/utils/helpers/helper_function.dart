import 'package:flutter/material.dart';

class THelper {
  THelper._(); // to prevent initialization of the class

  static isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
