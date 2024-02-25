import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';

class TopBar extends StatelessWidget {
  final void Function() onTapIcon;
  TopBar({super.key, required this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(width: 5.w),
                  Text(
                    "location".tr,
                    style: TextStyles.bold22Black,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColors.primaryColor,
                    size: 25,
                  ),
                  Text(
                    "Damascus",
                    style: TextStyles.w50020Black,
                  ),
                  Text(
                    ",Syria",
                    style: TextStyles.w40015grey,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed("Search");
                },
                child: Container(
                  width: Dimensions.screenwidth(context),
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1.5,
                          blurRadius: 1.5,
                          offset: Offset(0, 1),
                        ),
                      ]),
                  child: Row(children: [
                    SizedBox(width: 10.w),
                    Icon(
                      Icons.search,
                      size: 25,
                    ),
                    SizedBox(width: 5.w),
                    Text("search".tr,
                        style: Theme.of(context).textTheme.bodyText1)
                  ]),
                ),
              )
            ]),
          ),
          PositionedDirectional(
            top: 20.h,
            end: 20.w,
            child: InkWell(
              onTap: () {
                onTapIcon();
              },
              child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      boxShadow: const [BoxShadow(color: Colors.black)],
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
