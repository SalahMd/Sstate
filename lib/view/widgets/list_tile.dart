import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';

class ListTiles extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String listText;

  const ListTiles(
      {super.key,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.listText});
  @override
  Widget build(BuildContext context) {
    double circleSize = 35.h;

    return ListTile(
      leading: Container(
          width: circleSize,
          height: circleSize,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: lightAppColors.primaryColor),
          child: Icon(
            leadingIcon,
            color: Colors.white,
          )),
      trailing: Container(
        width: circleSize,
        height: circleSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(trailingIcon),
      ),
      title: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0),
        child: Text(listText, style: TextStyles.w50015Black),
      ),
    );
  }
}
