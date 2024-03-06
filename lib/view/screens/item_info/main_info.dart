import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/text_styles.dart';

class MainInfo extends StatelessWidget {
  final String title;
  final int num;
  final IconData icon;
  const MainInfo(
      {super.key, required this.title, required this.num, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(icon),
          SizedBox(
            width: 3.w,
          ),
          Text(
            title,
            style: TextStyles.w50012,
          ),
          SizedBox(
            width: 5.w,
          ),
          Container(
            alignment: Alignment.center,
            width: 17.w,
            height: 20.h,
            decoration: BoxDecoration(
                color: lightAppColors.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              num.toString(),
              style: TextStyles.w40010White,
            ),
          )
        ]),
      ),
    );
  }
}
