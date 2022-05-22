import 'package:flutter/material.dart';
import 'package:fruit_hub/app/core/theme/app_theme.dart';
import 'package:fruit_hub/app/routes/pages.dart';
import 'package:get/get.dart';

class FruitHub extends StatelessWidget {
  const FruitHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Fruit Hub',
        theme: AppTheme.themeCustom,
        getPages: AppPages.pages,
        initialRoute: Routes.home,
      );
}
