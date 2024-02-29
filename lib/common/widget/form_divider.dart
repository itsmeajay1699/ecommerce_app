import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
    required this.text,
  });

  final dynamic dark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.kDarkGrey : TColors.kGrey,
            thickness: 1,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.kDarkGrey : TColors.kGrey,
            thickness: 1,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
