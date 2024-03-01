import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.text,
    this.onPressed,
    this.showActionButton = true,
    this.textColor,
    this.buttonTitle = 'View all',
  });

  final String text;
  final bool? showActionButton;
  final Color? textColor;
  final String? buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton!)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}
