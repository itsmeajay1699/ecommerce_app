import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
      child: Container(
        width: TSizeConfig.screenWidth! * 1,
        padding: const EdgeInsets.all(TSize.md),
        decoration: BoxDecoration(
          color: TColors.kWhite,
          borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal,
              color: TColors.kDarkerGrey,
            ),
            const SizedBox(width: TSize.spaceBtwItems),
            Text('Search for products',
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
