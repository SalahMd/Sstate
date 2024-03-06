import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/text_styles.dart';

class AdditionalInfo extends StatelessWidget {
  final String info;

  const AdditionalInfo({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 5.w),
            Icon(
              Icons.info,
              size: 25,
            ),
            SizedBox(width: 5.w),
            Text(
              "additional".tr,
              style: TextStyles.bold17,
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 7.0),
          child: Text(
            info,
            style: TextStyles.w40013grey,
          ),
        )
      ],
    );
  }
}
