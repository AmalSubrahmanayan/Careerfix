import 'package:careerfix/view/sign_in/sign_in_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final _loading = true.obs;

  bool get loading => _loading.value;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() async {
    // Simulate a loading process for 3 seconds
    await Future.delayed(const Duration(seconds: 10));

    // Set loading to false to indicate the loading is complete
    _loading.value = false;

    // Navigate to the SignIn screen
    Get.off(() => SignInScreen());
  }
}
