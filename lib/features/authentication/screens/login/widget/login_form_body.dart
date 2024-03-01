import 'package:ecommerce_app/features/authentication/screens/password_confiquration/forget_password.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/sign_up.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormBody extends StatelessWidget {
  const LoginFormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TSize.spaceBetweenSection),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fork_right),
                labelText: TTexts.kEmail,
              ),
            ),
            const SizedBox(
              height: TSize.spaceBetweenInputField,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: TTexts.kPassword,
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBetweenInputField / 2,
            ),

            // remember me and forget password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    const Text(TTexts.kRememberme)
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(const ForgetPasswordScreen()),
                  child: const Text(TTexts.kForgotPassword),
                ),
              ],
            ),
            const SizedBox(
              height: TSize.spaceBetweenSection,
            ),
            SizedBox(
              width: TSizeConfig.screenWidth! * 1,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.kSignin),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBetweenInputField,
            ),
            SizedBox(
              width: TSizeConfig.screenWidth! * 1,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text(TTexts.kCreateAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
