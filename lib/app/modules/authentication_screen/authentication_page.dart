import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fruit_hub/app/core/theme/color_theme.dart';
import 'package:fruit_hub/app/core/utils/images.dart';
import 'package:fruit_hub/app/core/theme/text_styles.dart';

import 'package:fruit_hub/app/routes/pages.dart';

import './authentication_controller.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 459,
                  color: ColorTheme.primaryColor,
                  alignment: Alignment.center,
                  child: Image.asset(AppImages.authImage),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: Text('What is your firstname?', style: TextStyles.headline1),
                      ),
                      const TextField(decoration: InputDecoration(hintText: 'Tony')),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Get.offAllNamed(Routes.home),
                  child: Text("Start Ordering", style: TextStyles.textButtonStyle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
