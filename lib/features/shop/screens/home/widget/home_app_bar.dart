import 'package:ecommerce_app/common/widget/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widget/products_cart/cart_menu_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(
            TTexts.kHomeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.kGrey),
          ),
          Text(
            TTexts.kHomeAppbarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.kWhite),
          ),
        ],
      ),
      actions: [
        TCartCounter(
          onPressed: () {},
        ),
      ],
    );
  }
}
