import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/customtextformfiled.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/add_place/add_images.dart';
import 'package:sestate/view/screens/add_place/additional_info.dart';
import 'package:sestate/view/screens/add_place/drop_down_widget.dart';
import 'package:sestate/view/screens/add_place/rent_or_sale.dart';
import 'package:sestate/view/screens/add_place/room_widgets.dart';
import 'package:sestate/view/widgets/divider.dart';

class AddPlace extends StatelessWidget {
  AddPlace({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddPlaceControllerImpl());
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: GetBuilder<AddPlaceControllerImpl>(builder: (controller) {
        return SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 20.h,
          ),
          SafeArea(
            child: Text(
              "addplace".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w),
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text("fillyourplaceinfo".tr,
                    style: TextStyles.w50022Black)),
          ).animate().fade(duration: 1000.ms).saturate(),
          SizedBox(height: 20.h),
          RentOrSaleChooser(
            controller: controller,
          ).animate().fade(duration: 1000.ms).saturate(),
          SizedBox(height: 20.h),
          DropDownWidget(
            title: "location".tr,
            choices: controller.streetsList,
            elementValue: controller.dropdownValue,
            elementValue2: controller.placeLocation,
          ),
          const MyDivider()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          DropDownWidget(
            title: "placetype".tr,
            choices: controller.placeTypesList,
            elementValue: controller.typeValue,
            elementValue2: controller.placeType,
          ),
          const MyDivider()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          RoomWidgets(
              title: "rooms".tr,
              numOfRooms: controller.numOfRooms,
              icon: Icons.bed_rounded,
              controller: controller),
          const MyDivider()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          RoomWidgets(
              title: "kitchens".tr,
              numOfRooms: controller.numOfKitchens,
              icon: Icons.kitchen_outlined,
              controller: controller),
          const MyDivider()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          RoomWidgets(
              title: "bathrooms".tr,
              numOfRooms: controller.numOfBathRooms,
              icon: Icons.bathroom_outlined,
              controller: controller),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          Visibility(
            visible: !controller.sale,
            child: RoomWidgets(
                title: "rentalterm".tr,
                numOfRooms: controller.rentalTerm,
                icon: Icons.calendar_month_outlined,
                controller: controller),
          ),
          Visibility(
              visible: !controller.sale,
              child: MyDivider()
                  .animate()
                  .fade(duration: (600.ms))
                  .slideY(begin: -0.5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                      child: Text(
                        "space".tr + "  (" + "m".tr + ")".tr,
                        style: TextStyles.w50015Black,
                      ))),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20)),
                      child: Customtextformfiled(
                        hinttext: "",
                        labelText: "",
                        icondata: Icons.space_bar_outlined,
                        controller: null,
                        min: 3,
                        max: 5,
                        isnumber: true,
                        ispassword: false,
                        isBorder: false,
                      ))),
            ],
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                      child: controller.sale
                          ? Text(
                              "price".tr,
                              style: TextStyles.w50015Black,
                            )
                          : Text(
                              "monthlyrent".tr,
                              style: TextStyles.w50015Black,
                            ))),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20)),
                      child: Customtextformfiled(
                        hinttext: "",
                        labelText: "",
                        icondata: Icons.attach_money_outlined,
                        controller: null,
                        min: 3,
                        max: 5,
                        isnumber: true,
                        ispassword: false,
                        isBorder: false,
                      ))),
            ],
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          const MyDivider()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "addimages".tr,
                    style: TextStyles.w50015Black,
                  ),
                  Text(controller.images.length.toString() + "/" + "10",
                      style: TextStyles.w40013grey)
                ],
              ),
            ),
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          SizedBox(
            height: 20.h,
          ),
          Align(
              alignment: AlignmentDirectional.centerStart,
              child: AddImages(
                images: [AppImages.img1, AppImages.img2, AppImages.img3],
                controller: controller,
              )).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          AdditionalInfo()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          GestureDetector(
            onTap: () {
              //controller.logIn();
            },
            child: Container(
              width: Dimensions.screenwidth(context),
              height: 40.h,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: lightAppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "confirm".tr,
                style: TextStyles.w50018White,
              ),
            ),
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        ]));
      }),
    );
  }
}
