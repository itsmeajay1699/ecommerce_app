import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widget/images/t_rounded_images.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_app/features/shop/screens/home/widget/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: const [
            TRoundedImage(
              imageUrl: TImages.kBanner1,
            ),
            TRoundedImage(
              imageUrl: TImages.kBanner2,
            ),
            TRoundedImage(
              imageUrl: TImages.kBanner3,
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.changeIndex(index);
            },
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                TCircularContainer(
                  width: controller.currentIndex == i ? 20 : 10,
                  height: 4,
                  color: controller.currentIndex == i
                      ? TColors.kPrimary
                      : TColors.kGrey,
                  borderRadius: 20,
                  margin: const EdgeInsets.only(right: TSize.spaceBtwItems),
                ),
            ],
          ),
        )
      ],
    );
  }
}
