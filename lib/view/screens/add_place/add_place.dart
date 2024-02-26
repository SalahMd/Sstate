import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/customtextformfiled.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/add_place/additional_info.dart';
import 'package:sestate/view/widgets/divider.dart';

class AddPlace extends StatelessWidget {
  AddPlace({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddPlaceControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.backGround,
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
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child:
                            Text("Location", style: TextStyles.w50015Black))),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      //width: Dimensions.screenwidth(context) / 2,
                      height: 50.h,
                      child: DropdownButton<String>(
                          borderRadius: BorderRadius.circular(15),
                          iconSize: 20,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          value: controller.dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          // key: controller.category,
                          style: TextStyles.w50014Black,
                          onChanged: (String? value) {
                            controller.dropdownValue = value!;
                            controller.placeLocation = value;
                            controller.update();
                          },
                          items: controller.streetsList

                          //}).toList(),
                          )),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child:
                            Text("Place type", style: TextStyles.w50015Black))),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      //width: Dimensions.screenwidth(context) / 2,
                      height: 50.h,
                      child: DropdownButton<String>(
                          borderRadius: BorderRadius.circular(15),
                          iconSize: 20,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          value: controller.typeValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 22,
                          // key: controller.category,
                          style: TextStyles.w50014Black,
                          onChanged: (String? value) {
                            controller.typeValue = value!;
                            controller.placeType = value;
                            controller.update();
                          },
                          items: controller.placeTypesList

                          //}).toList(),
                          )),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child: Text(
                          "Rooms",
                          style: TextStyles.w50015Black,
                        ))),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.room_preferences),
                        Text(
                          controller.numOfBedRooms.toString(),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              size: 20,
                            ),
                            Icon(Icons.arrow_downward_outlined, size: 20)
                          ],
                        )
                      ]),
                )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child: Text(
                          "Bathrooms",
                          style: TextStyles.w50015Black,
                        ))),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.bathroom_outlined),
                        Text(
                          controller.numOfBedRooms.toString(),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              size: 20,
                            ),
                            Icon(Icons.arrow_downward_outlined, size: 20)
                          ],
                        )
                      ]),
                )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child: Text(
                          "kithchens",
                          style: TextStyles.w50015Black,
                        ))),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.kitchen_outlined),
                        Text(
                          controller.numOfBedRooms.toString(),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              size: 20,
                            ),
                            Icon(Icons.arrow_downward_outlined, size: 20)
                          ],
                        )
                      ]),
                )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child: Text(
                          "Bathrooms",
                          style: TextStyles.w50015Black,
                        ))),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.bathroom_outlined),
                        Text(
                          controller.numOfBedRooms.toString(),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              size: 20,
                            ),
                            Icon(Icons.arrow_downward_outlined, size: 20)
                          ],
                        )
                      ]),
                )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 10),
                        child: Text(
                          "Price",
                          style: TextStyles.w50015Black,
                        ))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        height: 45.h,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
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
            ),
            MyDivider(),
            AdditionalInfo(),
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                //controller.logIn();
              },
              child: Container(
                width: Dimensions.screenwidth(context),
                height: 40.h,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Confirm".tr,
                  style: TextStyles.w50018White,
                ),
              ),
            ),
            SizedBox(height: 30.h)
          ]),
        );
      }),
    );
  }
}
