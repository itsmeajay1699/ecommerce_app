import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            Image.asset(
              TImages.kResetPasswordImage,
              width: TSizeConfig.screenWidth! * 0.8,
              height: TSizeConfig.screenHeight! * 0.3,
            ),

            const SizedBox(height: TSize.spaceBetweenSection),
            // title and subtitle

            Text(
              TTexts.kChangePasswordTitle,
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
              TTexts.kChangePasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            // buttons
            const SizedBox(height: TSize.spaceBetweenSection),
            SizedBox(
              width: TSizeConfig.screenWidth! * 1,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  TTexts.kDone,
                ),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems),
            SizedBox(
              width: TSizeConfig.screenWidth! * 1,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  TTexts.kResendEmail,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
