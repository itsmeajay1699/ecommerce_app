import 'package:ecommerce_app/common/widget/layout/grid_layout.dart';
import 'package:ecommerce_app/common/widget/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widget/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/store/store.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(
                images: [
                  TImages.kProduct16,
                  TImages.kProduct17,
                  TImages.kProduct18,
                ],
              ),
              // products
              TSectionHeading(
                text: "You might like",
                onPressed: () {},
                showActionButton: true,
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductVertical(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
