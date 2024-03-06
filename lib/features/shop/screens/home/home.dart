import 'package:ecommerce_app/common/widget/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/primary_header_container.dart';
import 'package:ecommerce_app/common/widget/image_text_widget/vertial_image_text.dart';
import 'package:ecommerce_app/common/widget/layout/grid_layout.dart';
import 'package:ecommerce_app/common/widget/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widget/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widget/home_app_bar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const THomeAppBar(),

                  // search bar
                  const SizedBox(height: TSize.spaceBetweenSection),
                  const TSearchContainer(),

                  const SizedBox(height: TSize.spaceBetweenSection),

                  // categories

                  Padding(
                    padding: const EdgeInsets.only(
                        left: TSize.defaultSpace,
                        bottom: TSize.defaultSpace * 1.3),
                    child: Column(
                      children: [
                        TSectionHeading(
                          text: 'Categories',
                          showActionButton: false,
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSize.spaceBtwItems),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return TVerticalImageText(
                                title: 'Category',
                                imageUrl: 'assets/images/email_delivery.png',
                                onPressed: () {},
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(),
                  const SizedBox(height: TSize.spaceBetween),
                  TSectionHeading(
                    text: "Products",
                    onPressed: () {},
                    // showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBetween),
                  TGridLayout(
                    itemCount: 10,
                    mainAxisExtent: 288,
                    itemBuilder: (context, index) {
                      return const TProductVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
