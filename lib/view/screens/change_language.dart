import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/home_page_controller.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/localization/changelanguage.dart';
import 'package:sestate/view/widgets/divider.dart';

class ChangeTheLanguage extends GetView<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    // Get.put(HomePageControllerImp());
    return GetBuilder<HomePageControllerImpl>(
      builder: (controllerImp) => Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            SafeArea(
                child: Text(
              "chooselanguage".tr,
              style: Theme.of(context).textTheme.headline1,
            )),
            SizedBox(height: 50.h),
            GestureDetector(
              onTap: () {
                controller.changeLang("ar");
                Get.back();
              },
              child: Container(
                  height: 60.h,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "arabic".tr,
                          style: TextStyles.bold18,
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
                controller.changeLang("en");

                Get.back();
              },
              child: Container(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "english".tr,
                      style: TextStyles.bold18,
                    ),
                    Container(
                        width: 35.w,
                        height: 35.h,
                        child: Image.asset(AppImages.englishimage))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
