import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/widgets/item_design.dart';

class MyAppointements extends StatelessWidget {
  const MyAppointements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const ItemDesign(
                        image: AppImages.img1,
                        bedRooms: 4,
                        bathRooms: 2,
                        livingRoom: 2,
                        space: 320,
                        price: 4000,
                      ),
                      Container(
                        width: Dimensions.screenwidth(context),
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        padding: EdgeInsetsDirectional.only(start: 5.w),
                        alignment: AlignmentDirectional.centerStart,
                        decoration: BoxDecoration(
                            color: lightAppColors.greenColor,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Text(
                          "Your appointment is on 13-5-2024",
                          style: TextStyles.w40012White,
                        ),
                      )
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
