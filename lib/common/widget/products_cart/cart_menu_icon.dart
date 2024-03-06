import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounter extends StatelessWidget {
  const TCartCounter({
    super.key,
    required this.onPressed,
    this.color = TColors.kWhite,
  });

  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelper.isDark(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.shopping_bag,
            color: dark ? TColors.kLight : TColors.kDark,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 18,
            alignment: Alignment.center,
            height: 18,
            decoration: BoxDecoration(
              color: dark ? TColors.kLight : TColors.kDark,
              shape: BoxShape.circle,
            ),
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: dark ? TColors.kDark : TColors.kLight,
                    fontSizeFactor: 0.8,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
