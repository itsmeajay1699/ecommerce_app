import "package:flutter/material.dart";

class TColors {
  TColors._();

  // app basic colors
  static const Color kPrimary = Color(0xFF4868FF);
  static const Color kSecondary = Color(0xFFFFE24B);
  static const Color kAccent = Color(0xFFb0c7ff);

  // text colors

  static const Color kTextPrimary = Color(0xFF333333);
  static const Color kTextSecondary = Color(0xFF6c7570);
  static const Color kTextWhite = Color(0xFFFFFFFF);

  // background colors

  static const Color kLight = Color(0xFFF6F6F6);
  static const Color kDark = Color(0xFF272727);
  static const Color kPrimaryBackground = Color(0xFFF3F5FF);

  // background container colors

  static const Color kLightContainer = Color(0xFFF6F6F6);
  static Color kDarkContainer = Colors.white.withOpacity(0.1);

  // button colors

  static const Color kButtonPrimary = Color(0xFF4b68ff);
  static const Color kButtonSecondary = Color(0xFF6c7570);
  static const Color kButtonDisabled = Color(0xFFC4C4C4);

  // border colors

  static const Color kBorderPrimary = Color(0xFFD9D9D9);
  static const Color kBorderSecondary = Color(0xFFE6E6E6);

  // error and validation colors

  static const Color kError = Color(0xFFD32F2F);
  static const Color kSuccess = Color(0xFF4CAF50);
  static const Color kWarning = Color(0xFFFFA000);
  static const Color kInfo = Color(0xFF2196F3);

  // neutral colors

  static const Color kBlack = Color(0xFF232323);
  static const Color kDarkerGrey = Color(0xFF4F4F4F);
  static const Color kDarkGrey = Color(0xFF939393);
  static const Color kGrey = Color(0xFFE0E0E0);
  static const Color kSoftGrey = Color(0xFFF4F4F4);
  static const Color kLightGrey = Color(0xFFF9F9F9);
  static const Color kWhite = Color(0xFFFFFFFF);

  // gradient colors

  static const Gradient kLinearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );
}
