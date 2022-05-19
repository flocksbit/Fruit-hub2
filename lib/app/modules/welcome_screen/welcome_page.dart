import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fruit_hub/app/core/theme/color_theme.dart';
import 'package:fruit_hub/app/core/theme/text_styles.dart';
import 'package:fruit_hub/app/core/utils/images.dart';

import 'package:fruit_hub/app/routes/pages.dart';

import './welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 459,
              color: ColorTheme.primaryColor,
              alignment: Alignment.center,
              child: Image.asset(AppImages.welcomeImage),
            ),
            Container(
              height: 85,
              margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Get The Freshest Fruit Salad Combo', style: TextStyles.headline1),
                  Text(
                    'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                    style: TextStyles.body1,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.AUTHENTICATION),
              child: Text(
                "Let's Continue",
                style: TextStyles.textButtonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
