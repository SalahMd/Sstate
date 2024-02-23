import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/item_info_controller.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/item_info/additional_info.dart';
import 'package:sestate/view/screens/item_info/image_view.dart';
import 'package:sestate/view/screens/item_info/main_info.dart';

class ItemInfo extends StatelessWidget {
  ItemInfo({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ItemInfoControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: GetBuilder<ItemInfoControllerImpl>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ImageView(
                      images: [AppImages.img1, AppImages.img3, AppImages.img2],
                      currentPage: controller.currentPage,
                      controller: controller.imageController,
                      pageController: controller,
                    ),
                    PositionedDirectional(
                        top: 35.h,
                        end: 15.w,
                        child: Container(
                          width: 30.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Icon(Icons.favorite_border_outlined),
                        )),
                    PositionedDirectional(
                        top: 35.h,
                        start: 15.w,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            width: 30.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                        )),
                    Positioned(
                      bottom: 10.h,
                      right: Dimensions.screenwidth(context) / 2.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                              3,
                              (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 600),
                                    width: controller.currentPage == index
                                        ? 15
                                        : 9,
                                    height: 9,
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Row(children: [
                              SizedBox(width: 5.w),
                              Icon(
                                Icons.location_on,
                                size: 25,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Muhajjrin",
                                style: TextStyles.bold22Black,
                              ),
                            ])),
                            Expanded(
                              child: Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                    horizontal: 8.w),
                                alignment: AlignmentDirectional.centerEnd,
                                child: Text(
                                  "4000\$",
                                  style: TextStyles.bold22Black,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15.0),
                          child: Text(
                            "Muhajjrin/Third avenu/Ground floor",
                            style: TextStyles.w40013grey,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MainInfo(
                                title: "bedrooms".tr,
                                num: 3,
                                icon: Icons.bed_outlined),
                            MainInfo(
                                title: "livingrooms".tr,
                                num: 1,
                                icon: Icons.living_outlined)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MainInfo(
                                title: "bathrooms".tr,
                                num: 2,
                                icon: Icons.bathroom_outlined),
                            MainInfo(
                                title: "kitchens".tr,
                                num: 1,
                                icon: Icons.kitchen_outlined)
                          ],
                        ),
                        SizedBox(height: 10.h),
                        AdditionalInfo(
                          info: "Simple home with modern architecture and up to-date" +
                              " interior located in the ciy center makes it easy for you to access whole city.",
                        )
                      ]),
                )
              ]),
        ),
      ),
    );
  }
}
