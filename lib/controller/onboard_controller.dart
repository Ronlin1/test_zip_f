import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:efunding/data/onboard_data.dart';
import 'package:efunding/routes/routes.dart';

class OnBoardController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedIndex.value == onboardData.length;

  bool get isFirstPage => selectedIndex.value == 0;

  bool get isSecondPage => selectedIndex.value == 1;

  void nextPage() {
    if (isLastPage) {
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  void backPage() {
    pageController.previousPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  pageNavigate() {
    Get.toNamed(Routes.welcomeScreen);
  }

  void onTapCheck(){
    isFirstPage || isSecondPage ? nextPage() : pageNavigate();

  }

}
