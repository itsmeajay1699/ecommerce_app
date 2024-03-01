import 'package:ecommerce_app/common/widget/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: const Icon(Icons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              // image
              Image.asset(
                TImages.kVerifyEmail,
                width: TSizeConfig.screenWidth! * 0.8,
                height: TSizeConfig.screenHeight! * 0.3,
              ),

              const SizedBox(height: TSize.spaceBetweenSection),
              // title and subtitle

              Text(
                TTexts.kVerifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                'support@ajayCode.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                TTexts.kConfirmEmailMessage,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              // buttons
              const SizedBox(height: TSize.spaceBetweenSection),
              SizedBox(
                width: TSizeConfig.screenWidth! * 1,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    SuccessScreen(
                      image: TImages.kSuccessEmail,
                      title: TTexts.kYourAccountCreatedTitle,
                      subtitle: TTexts.kYourAccountCreatedSubtitle,
                      buttonText: TTexts.kGetStarted,
                      onButtonPressed: () => Get.to(const LoginScreen()),
                    ),
                  ),
                  child: const Text(
                    TTexts.kContinue,
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
      ),
    );
  }
}
