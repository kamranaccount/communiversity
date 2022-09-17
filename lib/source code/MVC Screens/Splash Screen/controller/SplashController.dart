import 'package:get/get.dart';

import '../../Login/view/LoginScreen.dart';
class AppSplashScreenController extends GetxController {
  @override
  onInit() {
    SplashScreenNavigateToNextPage();
    super.onInit();
  }
  SplashScreenNavigateToNextPage() async =>
      await Future.delayed(const Duration(seconds: 3)).then(
              (value) => Get.off(() => LoginScreen()),
      );
}
