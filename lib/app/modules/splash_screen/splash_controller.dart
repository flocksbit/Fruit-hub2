import 'package:fruit_hub/app/routes/pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    await 2.5.delay();
    Get.offAllNamed(Routes.WELCOME);
    super.onReady();
  }
}
