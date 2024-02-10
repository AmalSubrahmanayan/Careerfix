import 'package:careerfix/app/core/constants/sizedboxes/app_sizedboxes.dart';
import 'package:careerfix/app/core/constants/text_styles/app_text_styles.dart';
import 'package:careerfix/app/modules/bottomnavigationbar/views/bottomnavigationbar_view.dart';
import 'package:careerfix/app/modules/signup/views/signup_view.dart';
import 'package:careerfix/app/widgets/custom_button.dart';
import 'package:careerfix/app/widgets/text_form_fieldwidget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSizedBoxes.sizedboxH60,
              Image.asset("assets/images/Splash-1.png"),
              AppSizedBoxes.sizedboxH60,
              const TextFormFieldWidget(
                hintText: "Email Id",
                iconData: Icons.mail_outline_sharp,
                obscureText: false,
                autoFocus: false,
                // controller: ,
              ),
              const TextFormFieldWidget(
                hintText: "Password",
                iconData: Icons.lock_outline_rounded,
                obscureText: false,
                autoFocus: false,
                // controller: ,
              ),
              // AppSizedBoxes.sizedboxH60,
              // CustomButton(
              //   // formKey: myFormKey,
              //   buttonText: "Log In",
              //   onTap: () {},
              //   height: 30,
              //   width: 340,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget password ?",
                      style: AppTextStyles.mainColorText(18, FontWeight.w500),
                    )
                  ],
                ),
              ),
              AppSizedBoxes.sizedboxH120,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(
                  text: "Sign in",
                  onTap: () {
                    Get.to(const BottomnavigationbarView());
                  },
                ),
              ),
              AppSizedBoxes.sizedboxH30,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New Member? ",
                    style: AppTextStyles.blackColorText(20, FontWeight.bold),
                  ),
                  InkWell(
                    child: InkWell(
                      onTap: () {
                        Get.to(const SignupView());
                      },
                      child: Text(
                        "Register now",
                        style: AppTextStyles.mainColorText(20, FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
