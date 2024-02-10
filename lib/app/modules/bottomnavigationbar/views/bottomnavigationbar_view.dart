import 'package:careerfix/app/core/constants/colors/app_colors.dart';
import 'package:careerfix/app/modules/bottomnavigationbar/controllers/bottomnavigationbar_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:careerfix/app/modules/home/views/home_view.dart';
import 'package:careerfix/app/modules/signin/views/signin_view.dart';
import 'package:careerfix/app/modules/signup/views/signup_view.dart';

class BottomnavigationbarView extends GetView<BottomnavigationbarController> {
  final NavBarEssentials? navBarEssentials;

  const BottomnavigationbarView({Key? key, this.navBarEssentials})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight:
          navBarEssentials?.navBarHeight ?? kBottomNavigationBarHeight,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(),
      SigninView(),
      SignupView(),
      SignupView(),
      SignupView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.house_alt_fill,
        ),
        title: ("Home"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.briefcase_fill),
        title: ("Job"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        activeColorSecondary: AppColors.mainColor,
        icon: Icon(Icons.add),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_add),
        title: ("Sign up"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
