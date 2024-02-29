import 'package:ecommerce_app/features/authentication/screens/signup/widget/rich_span_text.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key, required this.dark});

  final dynamic dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.kFirstName,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              const SizedBox(width: TSize.spaceBetweenInputField),
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.kLastName,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSize.spaceBetweenInputField,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.kUsername,
              prefixIcon: Icon(Icons.edit),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBetweenInputField,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.kEmail,
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBetweenInputField,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.kPhone,
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBetweenInputField,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.kPassword,
              prefixIcon: Icon(Icons.password),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBetweenSection,
          ),
          RichSpanText(dark: dark),
        ],
      ),
    );
  }
}
