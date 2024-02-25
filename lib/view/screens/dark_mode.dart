import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/dark_mode.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/view/widgets/divider.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DarkModeImpl());
    return Scaffold(
      backgroundColor: AppColors.backGround,
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
              controller.changeMode(true);
              print("darkmode".tr);
            },
            child: Container(
                height: 55.h,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "darkmode".tr,
                        style: TextStyles.bold22Black,
                      ),
                      Container(
                          width: 35.w,
                          height: 35.h,
                          child: Image.asset(AppImages.arabicimage)),
                    ])),
          ),
          MyDivider(),
          GestureDetector(
            onTap: () {
              controller.changeMode(false);
              // Get.back();
            },
            child: Container(
              height: 60.h,
              //margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: AppColors.primaryColor,
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lightmode".tr,
                    style: TextStyles.bold22Black,
                  ),
                  Container(
                      width: 35.w,
                      height: 35.h,
                      child: Image.asset(AppImages.englishimage))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
