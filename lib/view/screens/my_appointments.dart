import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/my_appointments_controller.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/widgets/item_design.dart';

class MyAppointements extends StatelessWidget {
  const MyAppointements({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppointmentsControllerImpl());
    return GetBuilder<MyAppointmentsControllerImpl>(
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                    vertical: 20.h,
                    horizontal: 15.w,
                  ),
                  child: Text(
                    "myappointments".tr,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.only(bottom: 30.h),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ItemDesign(
                          image: controller.items[index].image,
                          bedRooms: controller.items[index].numOfRooms,
                          bathRooms: controller.items[index].numOfBathrooms,
                          livingRoom: controller.items[index].numOfKitchens,
                          space: controller.items[index].space,
                          price: controller.items[index].price,
                        ),
                        Container(
                          width: Dimensions.screenwidth(context),
                          height: 40.h,
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          padding:
                              EdgeInsetsDirectional.symmetric(horizontal: 8.w),
                          alignment: AlignmentDirectional.centerStart,
                          decoration: BoxDecoration(
                              color: lightAppColors.greenColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your appointment is on 13-5-2024",
                                style: TextStyles.w40012White,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.deleteAppointment();
                                  },
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.red[700],
                                  ))
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
