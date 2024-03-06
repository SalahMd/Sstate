import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/custom_text_form_filed.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/view/screens/add_place/room_widgets.dart';
import 'package:sestate/view/widgets/divider.dart';

import 'drop_down_widget.dart';

class MainInfo extends StatelessWidget {
  final AddPlaceControllerImpl controller;
  const MainInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropDownWidget(
            title: "location",
            choices: controller.streetsList,
            elementValue: controller.streetValue,
            controller: controller,
          ),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          DropDownWidget(
            title: "placetype",
            choices: controller.placeTypesList,
            elementValue: controller.typeValue,
            controller: controller,
          ),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          RoomWidgets(
              title: "rooms",
              numOfRooms: controller.numOfRooms,
              icon: Icons.bed_rounded,
              controller: controller),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          RoomWidgets(
              title: "kitchens",
              numOfRooms: controller.numOfKitchens,
              icon: Icons.kitchen_outlined,
              controller: controller),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          RoomWidgets(
              title: "bathrooms",
              numOfRooms: controller.numOfBathRooms,
              icon: Icons.bathroom_outlined,
              controller: controller),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          Visibility(
            visible: !controller.sale,
            child: RoomWidgets(
                title: "rentalterm",
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
                        style: TextStyles.bold14,
                      ))),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 60.h,
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
                        letters: 4,
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
                              style: TextStyles.bold14,
                            )
                          : Text(
                              "monthlyrent".tr,
                              style: TextStyles.bold14,
                            ))),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20)),
                      child: Customtextformfiled(
                        hinttext: "",
                        labelText: "",
                        icondata: Icons.attach_money_outlined,
                        controller: null,
                        min: 3,
                        letters: 6,
                        max: 5,
                        isnumber: true,
                        ispassword: false,
                        isBorder: false,
                      ))),
            ],
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
      ],
    );
  }
}
