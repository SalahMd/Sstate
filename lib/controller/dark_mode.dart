import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/services/services.dart';

abstract class DarkMode extends GetxController {
  changeMode(bool isDark);
}

class DarkModeImpl extends DarkMode {
  Myservices myServices = Get.find();
  @override
  changeMode(bool isDark) {
    if (isDark) {
      //myServices.sharedPreferences.setBool("dark", true);
      AppColors.backGround = Color.fromARGB(255, 37, 36, 36);
      AppColors.whiteColor = Color.fromARGB(255, 50, 49, 49);
      AppColors.blackColor = Colors.white;
    } else {
     // myServices.sharedPreferences.setBool("dark", false);
      AppColors.backGround = Color.fromARGB(250, 24, 25, 38);
      AppColors.whiteColor = Colors.white;
       AppColors.blackColor = Colors.black;
    }
    update();
    Get.back();
  }
}
