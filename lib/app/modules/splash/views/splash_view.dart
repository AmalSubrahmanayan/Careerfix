import 'package:careerfix/app/core/constants/colors/app_colors.dart';
import 'package:careerfix/app/core/constants/sizedboxes/app_sizedboxes.dart';
import 'package:careerfix/app/core/constants/text_styles/app_text_styles.dart';
import 'package:careerfix/app/modules/signup/views/signup_view.dart';
import 'package:careerfix/app/widgets/custom_spinkitfadingcube_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final SplashController splashController = Get.put(SplashController());
  SplashView({Key? key}) : super(key: key);
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
                        Text(
                          "Career Fix",
                          style: AppTextStyles.whiteText(22, FontWeight.w600),
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
            : const SignupView(),
      ),
    );
  }
}
