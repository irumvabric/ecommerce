import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helpers_functions.dart'
    show THelperFunctions;
import 'package:flutter/material.dart';

class WidgetSuccess extends StatelessWidget {
  const WidgetSuccess({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  final String image, title, subtitle, buttonText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            height: TSizes.buttonHeight,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: TColors.primaryColor,
              ),
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}
