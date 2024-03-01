import 'package:ecommerce_app/common/widget/form_divider.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widget/login_footer.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widget/sign_up_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelper.isDark(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.kSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSize.spaceBetweenSection,
              ),
              SignUpForm(
                dark: dark,
              ),
              const SizedBox(
                height: TSize.spaceBetweenSection,
              ),
              SizedBox(
                width: TSizeConfig.screenWidth! * 1,
                child: ElevatedButton(
                  onPressed: () => Get.to(const VerifyEmailScreen()),
                  child: const Text(TTexts.kSignup),
                ),
              ),
              const SizedBox(
                height: TSize.spaceBetweenSection,
              ),
              FormDivider(
                dark: dark,
                text: TTexts.kOrSignUpWith.capitalize!,
              ),
              const SizedBox(
                height: TSize.spaceBetweenSection,
              ),
              const LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
