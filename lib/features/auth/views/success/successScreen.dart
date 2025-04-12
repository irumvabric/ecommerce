import 'package:ecommerce/common/widgets/success/widget_success.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class Successscreen extends StatelessWidget {
  const Successscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetSuccess(
        image: Timages.Google,
        title: TTexts.addressHintText,
        subtitle: TTexts.addressHintText,
        buttonText: TTexts.addressHintText,
      ),
    );
  }
}
