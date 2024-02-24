import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/animations.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/core/localization/changelanguage.dart';

bool isarabic = false;
bool isenglish = false;

class ChooseLanguage extends GetView<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    // ChangeLanguageControllerImp controllerImp =
    //     Get.put(ChangeLanguageControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Dimensions.screenHeight(context) / 10,
          ),
          Text(
            "chooselanguage".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            height: Dimensions.screenHeight(context) / 3.5,
            child: AppAnimations.language,
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          Container(
            width: double.infinity,
            height: Dimensions.screenHeight(context) / 5,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    isarabic = true;
                    isenglish = false;
                    controller.changeColor();
                    controller.changeLang("ar");
                  },
                  child: Container(
                      width: double.infinity,
                      height: Dimensions.screenHeight(context) / 13,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: isarabic ? Colors.blue : Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "arabic".tr,
                              style: TextStyles.bold22Black,
                            ),
                            Container(
                                width: 40,
                                height: Dimensions.screenHeight(context) / 14,
                                child: Image.asset(AppImages.arabicimage))
                          ],
                        ),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                GestureDetector(
                  onTap: () {
                    isarabic = false;
                    isenglish = true;

                    controller.changeColor();
                    controller.changeLang("en");
                  },
                  child: Container(
                      width: double.infinity,
                      height: Dimensions.screenHeight(context) / 13,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: isenglish ? Colors.blue : Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "english".tr,
                              style: TextStyles.bold22Black,
                            ),
                            Container(
                                width: 40,
                                height: Dimensions.screenHeight(context) / 14,
                                child: Image.asset(AppImages.englishimage))
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          InkWell(
            onTap: () {
              if (isarabic || isenglish) Get.offNamed("OnBoarding");
            },
            child: Container(
              width: Dimensions.screenwidth(context),
              height: 40.h,
              margin: const EdgeInsets.symmetric(horizontal: 80),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "continuebutton".tr,
                style: TextStyles.w50018White,
              ),
            ),
          ),
        ],
      ),
    );
  }
}