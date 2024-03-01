import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.onButtonPressed});

  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.kPaddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image.asset(
                image,
                width: TSizeConfig.screenWidth! * 0.8,
                height: TSizeConfig.screenHeight! * 0.3,
              ),

              const SizedBox(height: TSize.spaceBetweenSection),
              // title and subtitle

              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              // Text(
              //   'support@ajayCode.com',
              //   style: Theme.of(context).textTheme.labelLarge,
              //   textAlign: TextAlign.center,
              // ),
              // const SizedBox(height: TSize.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              // buttons
              const SizedBox(height: TSize.spaceBetweenSection),
              SizedBox(
                width: TSizeConfig.screenWidth! * 1,
                child: ElevatedButton(
                  onPressed: onButtonPressed,
                  child: Text(
                    buttonText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
