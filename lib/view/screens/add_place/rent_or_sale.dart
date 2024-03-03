import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/functions/dimenesions.dart';

class RentOrSaleChooser extends StatelessWidget {
  final AddPlaceControllerImpl controller;
  RentOrSaleChooser({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenwidth(context),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              if (controller.sale)
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 125.w, top: 10.h, bottom: 10.h),
                  child: GestureDetector(
                    onTap: () {
                      controller.isSale(false);
                    },
                    child: Container(
                      width: Dimensions.screenwidth(context) / 2.5,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                      child: Text(
                        "rent".tr,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              GestureDetector(
                onTap: () {
                  controller.isSale(true);
                },
                child: Container(
                  width: Dimensions.screenwidth(context) / 2.5,
                  height: 40.h,
                  alignment: Alignment.center,
                  margin: EdgeInsetsDirectional.only(
                    start: 25.w,
                    top: 10.h,
                    bottom: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: controller.sale
                        ? Colors.green[800]
                        : Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Text(
                    "sale".tr,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (!controller.sale)
                GestureDetector(
                  onTap: () {
                    controller.isSale(false);
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 125.w, top: 10.h, bottom: 10.h),
                    child: Container(
                      width: Dimensions.screenwidth(context) / 2.5,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: !controller.sale
                              ? Colors.green[800]
                              : Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                      child: Text(
                        "rent".tr,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              // AnimatedPositionedDirectional(
              //   start: controller.containerPosition,
              //   top: 1,
              //   duration: Duration(milliseconds: 600),
              //   child: Container(
              //     width: 60.w,
              //     height: 10.h,
              //     decoration: BoxDecoration(
              //         color: Colors.green[800],
              //         borderRadius: const BorderRadius.only(
              //             topLeft: Radius.circular(10),
              //             topRight: Radius.circular(10))),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
