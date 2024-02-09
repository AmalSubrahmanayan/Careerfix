import 'package:careerfix/app/modules/signin/views/signin_view.dart';
import 'package:careerfix/app/modules/signup/views/signup_view.dart';
import 'package:careerfix/app/modules/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // home: SplashView(),
      home: SigninView(),
    ),
  );
}
