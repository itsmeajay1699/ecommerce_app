import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.kGrey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconSizeMd,
              height: TSize.iconSizeMd,
              image: AssetImage(TImages.kGoogleLogo),
            ),
          ),
        ),
        const SizedBox(
          width: TSize.spaceBetweenInputField,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.kGrey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconSizeMd,
              height: TSize.iconSizeMd,
              image: AssetImage(TImages.kFacebookLogo),
            ),
          ),
        )
      ],
    );
  }
}
