import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widget/form_divider.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widget/login_footer.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widget/login_form_body.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelper.isDark(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.kPaddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.kDarkAppLogo : TImages.kDarkAppLogo),
                  ),
                  const SizedBox(
                    height: TSize.sm,
                  ),
                  Text(
                    TTexts.kLoginTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: TSize.sm,
                  ),
                  Text(
                    TTexts.kLoginSubtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),

              // login form
              const LoginFormBody(),

              // divider
              FormDivider(
                dark: dark,
                text: TTexts.kOrSignInWith,
              ),

              // social media login
              const SizedBox(
                height: TSize.spaceBetweenSection,
              ),

              // login footer
              const LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
