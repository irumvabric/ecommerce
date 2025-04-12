import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart';
import 'package:flutter/material.dart';

class TLoginOrSignInWith extends StatelessWidget {
  const TLoginOrSignInWith({super.key, required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.greyColor : TColors.blackColor,
            indent: 60,
            thickness: 0.5,
            endIndent: 5,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
        Flexible(
          child: Divider(
            color: dark ? TColors.greyColor : TColors.blackColor,
            indent: 5,
            thickness: 0.5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
