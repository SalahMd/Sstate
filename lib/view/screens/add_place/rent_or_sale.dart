import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:sestate/core/functions/dimenesions.dart';

class RentOrSaleChooser extends StatelessWidget {
  const RentOrSaleChooser({super.key});

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
              Container(
                width: Dimensions.screenwidth(context) / 2.5,
                height: 40.h,
                alignment: Alignment.center,
                margin: EdgeInsetsDirectional.only(
                    start: 25.w, top: 10.h, bottom: 10.h),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                child: Text(
                  "sale".tr,
                  textAlign: TextAlign.center,
                ),
              ),
              //SizedBox()
              Padding(
                padding: EdgeInsetsDirectional.only(start: 125.w, top: 10.h, bottom: 10.h),
                child: Container(
                  width: Dimensions.screenwidth(context) / 2.5,
                  height: 40.h,
                  alignment: Alignment.center,
                  // margin: EdgeInsetsDirectional.only(
                  //     end: 10.w, top: 10.h, bottom: 10.h),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)),
                  child: Text(
                    "rent".tr,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
