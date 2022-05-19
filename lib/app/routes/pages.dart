import 'package:get/get.dart';

import 'package:fruit_hub/app/modules/authentication_screen/authentication_binding.dart';
import 'package:fruit_hub/app/modules/authentication_screen/authentication_page.dart';
import 'package:fruit_hub/app/modules/home_screen/home_binding.dart';
import 'package:fruit_hub/app/modules/home_screen/home_page.dart';
import 'package:fruit_hub/app/modules/splash_screen/splash_binding.dart';
import 'package:fruit_hub/app/modules/splash_screen/splash_page.dart';
import 'package:fruit_hub/app/modules/welcome_screen/welcome_binding.dart';
import 'package:fruit_hub/app/modules/welcome_screen/welcome_page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => const SplashPage(), binding: SplashBinding()),
    GetPage(name: Routes.WELCOME, page: () => const WelcomePage(), binding: WelcomeBinding()),
    GetPage(name: Routes.AUTHENTICATION, page: () => const AuthenticationPage(), binding: AuthenticationBinding()),
    GetPage(name: Routes.HOME, page: () => const HomePage(), binding: HomeBinding()),
  ];
}
