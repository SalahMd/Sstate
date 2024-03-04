import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/widgets/chips_choice.dart';

Future<bool> exitAlert() {
  Get.defaultDialog(
      title: "",
      middleText: "warningbody".tr,
      middleTextStyle: TextStyles.w50012,
      actions: [
        TextButton(
            onPressed: () {
              exit(0);
            },
            child: Text("yes".tr)),
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("no".tr))
      ]);
  return Future.value(true);
}

Future<bool> animationedAlert(
    var animation, String title, void Function() onYesTap) {
  Get.defaultDialog(
      title: title,
      titleStyle: TextStyles.w50017,
      titlePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      content: animation != null
          ? Container(
              alignment: Alignment.topCenter, height: 100.h, child: animation)
          : null,
      barrierDismissible: false,
      actions: [
        TextButton(
            onPressed: () {
              onYesTap;
            },
            child: Text(
              "yes".tr,
              style: TextStyles.bold14,
            )),
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("no".tr, style: TextStyles.bold14))
      ]);
  return Future.value(true);
}

alert(String title) {
  Get.defaultDialog(
    title: title,
    titleStyle: TextStyles.bold16,
    titlePadding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
  );
}

Future<bool> popUp(
  BuildContext context,
) {
  Get.bottomSheet(Container(
    width: Dimensions.screenwidth(context),
    height: 600.h,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 60.w,
                height: 8.h,
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: lightAppColors.greyColor,
                    borderRadius: BorderRadius.circular(50)),
              ),
            )),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w),
          child: Text(
            "filter".tr,
            style: TextStyles.bold18,
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
          child: Text(
            "categories".tr,
            style: TextStyles.w50018,
          ),
        ),
        ChipsChoices(options: [
          "apartments".tr,
          "offices".tr,
          "clinics".tr,
          "properties".tr
        ]),
        //SizedBox(height:10.h),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
          child: Text(
            "rentorsale".tr,
            style: TextStyles.w50018,
          ),
        ),
        ChipsChoices(options: [
          "rent".tr,
          "sale".tr,
        ]),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
          child: Text(
            "price".tr,
            style: TextStyles.w50018,
          ),
        ),
        ChipsChoices(options: [
          "expensive".tr,
          "medium".tr,
          "cheap".tr,
        ]),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
          child: Text(
            "space".tr,
            style: TextStyles.w50018,
          ),
        ),
        ChipsChoices(options: [
          "more100m".tr,
          "less100m".tr,
          "more200m".tr,
        ]),
        InkWell(
          onTap: () {
            //controller.logIn();
            Get.back();
          },
          child: Container(
            width: Dimensions.screenwidth(context),
            height: 40.h,
            margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: lightAppColors.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "confirm".tr,
              style: TextStyles.w50016White,
            ),
          ),
        ),
      ]),
    ),
  ));
  return Future.value(true);
}
