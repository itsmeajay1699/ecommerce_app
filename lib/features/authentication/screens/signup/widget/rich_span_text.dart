import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class RichSpanText extends StatelessWidget {
  const RichSpanText({
    super.key,
    required this.dark,
  });

  final dynamic dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (val) {}),
        ),
        const SizedBox(width: TSize.spaceBetween),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${TTexts.kIAgreeTo} ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                  text: '${TTexts.kPrivacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? Colors.white : TColors.kPrimary,
                      ),
                ),
                TextSpan(
                  text: '${TTexts.kAnd} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${TTexts.kTermsOfService} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? Colors.white : TColors.kPrimary,
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
