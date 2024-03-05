import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/widgets/shimmer_item.dart';

class ShimmerItemDesign extends StatelessWidget {
  const ShimmerItemDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ShimmerItem(
            width: Dimensions.screenwidth(context),
            height: 300,
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ShimmerItem(
            width: 150,
            height: 20,
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ShimmerItem(
            width: 80,
            height: 20,
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ShimmerItem(
              width: 50,
              height: 20,
            ),
            ShimmerItem(
              width: 50,
              height: 20,
            ),
            ShimmerItem(
              width: 50,
              height: 20,
            ),
            ShimmerItem(
              width: 50,
              height: 20,
            ),
          ],
        ),
        
      ],
    );
  }
}
