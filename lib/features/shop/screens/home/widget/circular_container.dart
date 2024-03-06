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
    this.margin,
    this.alignment,
    this.useThis = false,
    this.wholePadding,
    this.showBorder = false,
    this.borderColor,
  });

  final double? width;
  final double? height;
  final double? padding;
  final double? borderRadius;
  final Widget? child;
  final Color? color;
  final EdgeInsets? margin;
  final AlignmentGeometry? alignment;
  final bool? useThis;
  final EdgeInsetsGeometry? wholePadding;
  final bool showBorder;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      alignment: alignment,
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.zero,
      padding: useThis! ? wholePadding : EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        color: color ?? TColors.kPrimary,
        border: showBorder
            ? Border.all(
                color: borderColor ?? TColors.kLightGrey,
              )
            : null,
      ),
      child: child,
    );
  }
}
