import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  TSpacingStyle._();

  static const EdgeInsetsGeometry kPaddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    left: TSize.defaultSpace,
    bottom: TSize.defaultSpace,
    right: TSize.defaultSpace,
  );
}
