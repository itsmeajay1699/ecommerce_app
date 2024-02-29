import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find<OnBoardingController>();

  final PageController pageController = PageController();

  RxInt currentIndex = 0.obs;

  void updatePageIndicator(index) => currentIndex.value = index;

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      currentIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
