import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/core/functions/dimenesions.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenwidth(context),
      height: 40.h,
      margin:const EdgeInsetsDirectional.only(start: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "filter".tr,
            style: TextStyles.w50020Black,
          ),
          IconButton(
              onPressed: () {
                popUp(context);
              },
              icon: const Icon(
                Icons.filter_alt_outlined,
                size: 30,
              ))
        ],
      ),
    );
  }
}
