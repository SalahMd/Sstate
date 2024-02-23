import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';

class CategoryDesign extends StatelessWidget {
  final String title;
  final String image;
  const CategoryDesign({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: Container(
          height: 80.h,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: []),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.home,
                size: 25,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                title,
                style: TextStyles.w50014Black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
