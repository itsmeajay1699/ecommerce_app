import 'package:ecommerce_app/common/widget/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widget/appbar/tabbar.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widget/layout/grid_layout.dart';
import 'package:ecommerce_app/common/widget/product_cards/t_brand_card.dart';
import 'package:ecommerce_app/common/widget/products_cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widget/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widget/circular_container.dart';
import 'package:ecommerce_app/features/shop/screens/store/widget/category_tab.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('Store'),
          actions: [TCartCounter(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    THelper.isDark(context) ? TColors.kDark : TColors.kLight,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSize.spaceBtwItems),
                      const TSearchContainer(
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSize.spaceBetweenSection),
                      TSectionHeading(
                        text: "Featured Brands",
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (context, index) {
                          return const TBrandCard();
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const TTabbar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Fashion")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      showBorder: true,
      borderColor: TColors.kDarkerGrey,
      color: Colors.transparent,
      padding: TSize.md,
      borderRadius: TSize.cardRadiusLg,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(),

          const SizedBox(height: TSize.spaceBetweenInputField),
          // brands top 3 products
          Row(
            children: images
                .map((e) => brandTopProductImageWidget(context, e))
                .toList(),
          )
        ],
      ),
    );
  }

  Flexible brandTopProductImageWidget(BuildContext context, String image) {
    return Flexible(
      child: TCircularContainer(
        height: 100,
        margin: const EdgeInsets.only(right: TSize.sm),
        color: THelper.isDark(context) ? TColors.kDarkGrey : TColors.kLight,
        borderRadius: TSize.cardRadiusLg,
        padding: TSize.sm,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
