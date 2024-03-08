import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/item_info_controller.dart';
import 'package:sestate/core/constants/animations.dart';
import 'package:sestate/core/constants/buttons.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/core/functions/date_time.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/item_info/additional_info.dart';
import 'package:sestate/view/screens/item_info/image_view.dart';
import 'package:sestate/view/screens/item_info/main_info.dart';

class ItemInfo extends StatelessWidget {
  bool isAppointed;

  ItemInfo({super.key, this.isAppointed = false});
  @override
  Widget build(BuildContext context) {
    Get.put(ItemInfoControllerImpl());
    return Scaffold(
      body: GetBuilder<ItemInfoControllerImpl>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ImageView(
                      images: const [
                        AppImages.img1,
                        AppImages.img3,
                        AppImages.img2
                      ],
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
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const Icon(Icons.favorite_border_outlined),
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35.h),
                      child: Center(
                        child: Text(
                          "Apartment".tr,
                          style: TextStyles.bold17,
                        ),
                      ),
                    ),
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: const Icon(Icons.arrow_back_ios_new_outlined),
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
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer,
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
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Row(children: [
                              SizedBox(width: 5.w),
                              const Icon(
                                Icons.location_on,
                                size: 25,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Muhajjrin",
                                style: TextStyles.w50018,
                              ),
                            ])),
                            Expanded(
                              child: Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                    horizontal: 8.w),
                                alignment: AlignmentDirectional.centerEnd,
                                child: Text(
                                  "4000\$",
                                  style: TextStyles.bold17,
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
                                title: "rooms".tr,
                                num: 3,
                                icon: Icons.bed_outlined),
                            MainInfo(
                                title: "space".tr,
                                num: 222,
                                icon: Icons.space_bar_outlined)
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
                        const AdditionalInfo(
                          info: "Simple home with modern architecture and up to-date" 
                              " interior located in the ciy center makes it easy for you to access whole city.",
                        )
                      ]),
                ),
                controller.date != null
                    ? Column(
                        children: [
                          SizedBox(height: 30.h),
                          Center(
                            child: Container(
                              width: 150.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.calendar_month_outlined,
                                    ),
                                    Text(
                                      controller.date.toString(),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      )
                    : SizedBox(height: 10.h),
                !isAppointed
                    ? controller.date == null
                        ? GestureDetector(
                            onTap: () async {
                              controller.date = await selectDate(context);
                              controller.update();
                            },
                            child: Center(
                                child: Container(
                                    width: Dimensions.screenwidth(context),
                                    height: 45.h,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 20),
                                    alignment: Alignment.center,
                                    decoration: AppButtons.decorationButton,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text(
                                        "makeappointment".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyles.w50015White,
                                      ),
                                    ))),
                          )
                        : Center(
                            child: GestureDetector(
                              onTap: () async {
                                controller.dialogConfirming(
                                    AppAnimations.question, "confirmorder".tr);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 150.w,
                                height: 40.h,
                                margin: EdgeInsets.symmetric(vertical: 30.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: lightAppColors.greenColor,
                                ),
                                child: Text(
                                  'confirm'.tr,
                                  style: TextStyles.w50015White,
                                ),
                              ),
                            ),
                          )
                    : Container(
                        width: Dimensions.screenwidth(context),
                        height: 50,
                        alignment: AlignmentDirectional.center,
                        margin: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 20.h),
                        decoration: BoxDecoration(
                          color: lightAppColors.greenColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "${"yourappointmentison".tr} 13-5-2024",
                          style: TextStyles.w50012White,
                        ),
                      ),
              ]),
        ),
      ),
    );
  }
}
