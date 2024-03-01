import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.child,
    this.color,
  });

  final double? width;
  final double? height;
  final double? padding;
  final double? borderRadius;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        color: color ?? TColors.kPrimary,
      ),
      child: child,
    );
  }
}
