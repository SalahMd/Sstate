import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/widgets/shimmer_item.dart';
import 'package:sestate/view/widgets/shimmer_item_design.dart';

class ShimmerHomePage extends StatelessWidget {
  const ShimmerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h,),
        SafeArea(
            child: ShimmerItem(
          height: 20,
          width: 80,
        )),
        SizedBox(
          height: 10.h,
        ),
        ShimmerItem(
          height: 20,
          width: 80,
        ),
        SizedBox(
          height: 20.h,
        ),
        //search bar
        ShimmerItem(
          height: 40,
          width: Dimensions.screenwidth(context),
        ),
        SizedBox(
          height: 20.h,
        ),
        ShimmerItem(
          height: 30,
          width: 120,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ShimmerItem(
              height: 80,
              width: Dimensions.screenwidth(context) / 3,
            ),
            ShimmerItem(
              height: 80,
              width: Dimensions.screenwidth(context) / 3,
            ),
          ],
        ),
        SizedBox(height:20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ShimmerItem(
              height: 80,
              width: Dimensions.screenwidth(context) / 3,
            ),
            ShimmerItem(
              height: 80,
              width: Dimensions.screenwidth(context) / 3,
            ),
          ],
        ),
         SizedBox(
          height: 20.h,
        ),
        ShimmerItem(
          height: 30,
          width: 120,
        ),
        
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 30.h),
          ShimmerItemDesign(),
          SizedBox(height: 30.h),
          ShimmerItemDesign(),
          SizedBox(height: 30.h),
          ShimmerItemDesign(),
        ]),
      ],
    ));
  }
}
