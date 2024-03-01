import 'package:ecommerce_app/features/authentication/screens/password_confiquration/reset_password.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            // headings
            Text(
              TTexts.kForgotPassword,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSize.spaceBtwItems),
            Text(
              TTexts.kForgotPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSize.spaceBetweenSection * 2),

            // text fields

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fork_right),
                labelText: TTexts.kEmail,
              ),
            ),

            const SizedBox(height: TSize.spaceBetweenSection),

            // submit button
            SizedBox(
              width: TSizeConfig.screenWidth! * 1,
              child: ElevatedButton(
                onPressed: () => Get.off(const ResetPasswordScreen()),
                child: const Text(TTexts.kSubmit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
