import 'package:ecommerce_app/common/widget/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widget/icons/t_circular_icons.dart';
import 'package:ecommerce_app/common/widget/layout/grid_layout.dart';
import 'package:ecommerce_app/common/widget/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/features/shop/screens/home/home.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            color: Theme.of(context).iconTheme.color,
            onTap: () => Get.to(
              const HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 10,
                itemBuilder: (_, index) => const TProductVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
