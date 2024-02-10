import 'package:careerfix/app/core/constants/sizedboxes/app_sizedboxes.dart';
import 'package:careerfix/app/core/constants/text_styles/app_text_styles.dart';
import 'package:careerfix/app/modules/signin/views/signin_view.dart';
import 'package:careerfix/app/widgets/custom_button.dart';
import 'package:careerfix/app/widgets/text_form_fieldwidget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
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
              AppSizedBoxes.sizedboxH10,
              const TextFormFieldWidget(
                hintText: "Name",
                iconData: Icons.person_outlined,
                obscureText: false,
                autoFocus: false,
                // controller: ,
              ),
              const TextFormFieldWidget(
                hintText: "Email Id",
                iconData: Icons.mail_outline_sharp,
                obscureText: false,
                autoFocus: false,
                // controller: ,
              ),
              const TextFormFieldWidget(
                hintText: "Mobile Number",
                iconData: Icons.phone_android_rounded,
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
              const TextFormFieldWidget(
                hintText: "Confirm Password",
                iconData: Icons.lock_outline_rounded,
                obscureText: false,
                autoFocus: false,
                // controller: ,
              ),
              // AppSizedBoxes.sizedboxH30,
              // CustomButton(
              //   // formKey: myFormKey,
              //   buttonText: "Sign Up",
              //   onTap: () {},
              //   height: 30,
              //   width: 340,
              // ),
              AppSizedBoxes.sizedboxH60,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(
                  text: "Sign Up",
                  onTap: () {
                    // Get.to(const BottonNavigationBarView());
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member?",
                    style: AppTextStyles.blackColorText(20, FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const SigninView());
                    },
                    child: Text(
                      "Log In",
                      style: AppTextStyles.mainColorText(20, FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
