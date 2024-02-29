import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(
            width: TSizeConfig.screenWidth! * 0.8,
            height: TSizeConfig.screenHeight! * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSize.spaceBetween,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
