import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';

class CategoryDesign extends StatelessWidget {
  final String title;
  final String image;
  final void Function() onTap;
  CategoryDesign({super.key, required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 80.h,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: []),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 22.w,
                  height: 22.h,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
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
      ),
    );
  }
}
