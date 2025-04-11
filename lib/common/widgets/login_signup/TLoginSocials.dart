import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TLoginSocials extends StatelessWidget {
  const TLoginSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.greyColor),
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconSm,
              height: TSizes.iconSm,
              image: AssetImage(Timages.Google),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwInputFields),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.greyColor),
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconSm,
              height: TSizes.iconSm,
              image: AssetImage(Timages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
