import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDivider extends StatelessWidget {
   double? height = 5.h;
   MyDivider({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
        ),
        const Divider(
          thickness: 1,
        ),
        SizedBox(
          height: height,
        ),
      ],
    );
  }
}
