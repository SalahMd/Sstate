import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sestate/controller/dark_mode.dart';
import 'package:sestate/core/constants/animations.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/view/widgets/divider.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DarkModeImpl());
    return Scaffold(
      body: GetBuilder<DarkModeImpl>(
        builder: (controller) => Column(children: [
          SizedBox(
            height: 10.h,
          ),
          SafeArea(
              child: Text(
            "choosemode".tr,
            style: Theme.of(context).textTheme.headline1,
          )),
          SizedBox(height: 50.h),
          GestureDetector(
            onTap: () {
              controller.changeMode("dark");
            },
            child: Container(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "darkmode".tr,
                        style: TextStyles.bold22Black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 7.w),
                        child: SizedBox(
                          width: 35.w,
                          height: 35.h,
                          //child: Image.asset(AppImages.arabicimage),
                          child: AppAnimations.darkMode,
                        ),
                      ),
                    ])),
          ),
          const MyDivider(),
          GestureDetector(
            onTap: () {
              controller.changeMode("light");
            },
            child: Container(
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lightmode".tr,
                    style: TextStyles.bold22Black,
                  ),
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    // child: Image.asset(AppImages.englishimage),
                    child: AppAnimations.lightMode,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
