import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.color,
    this.icon,
    this.onTap,
  });

  final Color? color;
  final IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: THelper.isDark(context)
            ? TColors.kBlack.withOpacity(0.9)
            : TColors.kWhite.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onTap ?? () {},
        icon: Icon(
          icon ?? Iconsax.heart5,
          color: color ?? TColors.kPrimary,
        ),
      ),
    );
  }
}
