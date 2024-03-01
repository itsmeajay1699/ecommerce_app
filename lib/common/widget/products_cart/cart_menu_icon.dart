import 'package:ecommerce_app/utils/constants/colors.dart';
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
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.shopping_bag,
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 18,
            alignment: Alignment.center,
            height: 18,
            decoration: const BoxDecoration(
              color: TColors.kBlack,
              shape: BoxShape.circle,
            ),
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: TColors.kWhite,
                    fontSizeFactor: 0.8,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
