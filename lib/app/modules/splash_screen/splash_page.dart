import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fruit_hub/app/core/theme/color_theme.dart';
import 'package:fruit_hub/app/core/theme/text_styles.dart';
import 'package:fruit_hub/app/core/utils/images.dart';

import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(AppImages.logo)),
            Container(
              width: 200,
              height: 54,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorTheme.primaryColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: Text('Fruit Hub', style: TextStyles.textLogo),
            ),
          ],
        ),
      ),
    );
  }
}
