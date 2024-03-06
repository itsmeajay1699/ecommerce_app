import 'package:ecommerce_app/common/widget/brand_image_title/t_brand_title_image_verified.dart';
import 'package:ecommerce_app/common/widget/images/t_circular_image.dart';
import 'package:ecommerce_app/features/shop/screens/home/widget/circular_container.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TCircularContainer(
        wholePadding: const EdgeInsets.all(TSize.xs),
        useThis: true,
        showBorder: true,
        borderRadius: TSize.cardRadiusLg,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // icon
            const Flexible(
              child: TCircularImage(
                image: TImages.kProduct10,
                isNetworkImage: false,
                height: 56,
                width: 56,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: "Nike",
                    maxLines: 1,
                  ),
                  Text(
                    "256 productsfs fsfsfsfsfsfsf",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
