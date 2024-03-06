import 'package:ecommerce_app/common/widget/brand_image_title/t_brand_title_image_verified.dart';
import 'package:ecommerce_app/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce_app/common/widget/images/t_rounded_images.dart';
import 'package:ecommerce_app/common/widget/texts/product_title_text.dart';
import 'package:ecommerce_app/features/shop/screens/home/widget/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:ecommerce_app/utils/shadows/shadows.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductVertical extends StatelessWidget {
  const TProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelper.isDark(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductCard],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ? Colors.grey[800] : Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TCircularContainer(
              padding: TSize.sm,
              color: dark ? TColors.kDark : TColors.kLight,
              borderRadius: TSize.productImageRadius,
              child: Stack(
                children: [
                  // image
                  const TRoundedImage(imageUrl: TImages.kProduct1),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: TCircularContainer(
                      borderRadius: TSize.xs,
                      alignment: Alignment.center,
                      wholePadding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      color: TColors.kSecondary.withOpacity(0.8),
                      useThis: true,
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: TColors.kBlack,
                            ),
                      ),
                    ),
                  ),
                  // sale tag
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: TCircularIcon(
                      color: TColors.kError,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.all(TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    text:
                        "Boat Rockerz 400 On-Ear Bluetooth Headphones (Carbon Black)",
                    smallSize: false,
                    maxLines: 1,
                  ),
                  SizedBox(height: TSize.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(
                    title: "Boat",
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: TSize.sm),
                  child: Text(
                    "\$35.00",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: TColors.kDark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSize.cardRadiusMd),
                      bottomRight: Radius.circular(TSize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSize.iconSizeLg * 1.2,
                    height: TSize.iconSizeLg * 1.2,
                    child: Icon(
                      Iconsax.add,
                      color: TColors.kWhite,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
