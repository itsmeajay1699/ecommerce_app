import 'package:ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    final controller = Get.put(OnBoardingController());

    TSizeConfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: 'assets/images/onboarding/first.gif',
                title: TTexts.kOnboardingTitle1,
                subtitle: TTexts.kOnboardingSubtitle1,
              ),
              OnBoardingPage(
                image: 'assets/images/onboarding/second.gif',
                title: TTexts.kOnboardingTitle2,
                subtitle: TTexts.kOnboardingSubtitle2,
              ),
              OnBoardingPage(
                image: 'assets/images/onboarding/third.gif',
                title: TTexts.kOnboardingTitle3,
                subtitle: TTexts.kOnboardingSubtitle3,
              ),
            ],
          ),
          Positioned(
            top: TSizeConfig.screenHeight! * 0.05,
            right: 20,
            child: TextButton(
              onPressed: controller.skipPage,
              child: const Text(TTexts.kSkip),
            ),
          ),
          Positioned(
            bottom: TSizeConfig.screenHeight! * 0.08,
            left: TSizeConfig.screenWidth! * 0.05,
            child: SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                activeDotColor: dark ? TColors.kLight : TColors.kDark,
              ),
            ),
          ),
          Positioned(
            bottom: TSizeConfig.screenHeight! * 0.05,
            right: TSizeConfig.screenWidth! * 0.05,
            child: ElevatedButton(
              onPressed: controller.nextPage,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? TColors.kPrimary : Colors.black,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
