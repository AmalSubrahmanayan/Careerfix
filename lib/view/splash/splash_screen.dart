import 'package:careerfix/controller/splash_controller.dart';
import 'package:careerfix/core/constants/colors/app_colors.dart';
import 'package:careerfix/core/constants/sizedboxes/app_sizedboxes.dart';
import 'package:careerfix/core/constants/text_styles/app_text_styles.dart';
import 'package:careerfix/view/on_boarding/on_boarding_screen_one.dart';
import 'package:careerfix/view/sign_in/sign_in_screen.dart';
import 'package:careerfix/widgets/custom_spinkitfadingcube_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Obx(
        () => splashController.loading
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Splash-1.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Career Fix",
                          style: AppTextStyles.splashText,
                        ),
                        AppSizedBoxes.sizedboxW10,
                        SvgPicture.asset("assets/images/Splash-2.svg"),
                      ],
                    ),
                    AppSizedBoxes.sizedboxH20,
                    const CustomSpinKitFadingCube(
                      color: AppColors.whiteColor,
                      size: 30,
                    )
                  ],
                ),
              )
            : OnBoardingScreenOne(),
      ),
    );
  }
}
