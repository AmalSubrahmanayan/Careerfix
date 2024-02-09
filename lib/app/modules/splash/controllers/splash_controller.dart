import 'package:careerfix/app/modules/signin/views/signin_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final _loading = true.obs;
  bool get loading => _loading.value;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    super.onInit();
    startTimer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void startTimer() async {
    // Simulate a loading process for 3 seconds
    await Future.delayed(const Duration(seconds: 10));

    // Set loading to false to indicate the loading is complete
    _loading.value = false;

    // Navigate to the SignIn screen
    Get.off(() => SigninView());
  }

  void increment() => count.value++;
}
