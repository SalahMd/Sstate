import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "additional".tr,
              style: TextStyles.bold14,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: Dimensions.screenwidth(context),
          height: 150.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            maxLines: 3,
            maxLength: 100,
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                //filled: true,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        )
      ],
    );
  }
}
