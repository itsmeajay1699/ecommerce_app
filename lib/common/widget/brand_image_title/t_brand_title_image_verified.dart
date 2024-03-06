import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    required this.maxLines,
    this.textColor,
    this.innerColor,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, innerColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            overflow: TextOverflow.ellipsis,
            maxLines: maxLines,
            style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(width: TSize.xs),
        const Icon(
          Iconsax.verify,
          size: TSize.iconSizeXs,
          color: TColors.kPrimary,
        ),
      ],
    );
  }
}
