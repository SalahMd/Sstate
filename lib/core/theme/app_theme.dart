import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';

class AppTheme {
  static var darkTheme = ColorScheme.dark(
    primary: darkAppColors.primaryColor,
    primaryContainer:darkAppColors.whiteColor,
    onPrimaryContainer: Color.fromARGB(255, 250, 248, 248),
    onErrorContainer: Color(0xFFF9DEDC),
    outline: Color(0xFF938F99),
    background: Colors.grey[900]!,
    onBackground: Color.fromARGB(255, 2, 2, 2),
    surface: Color.fromARGB(255, 226, 45, 45),
    onSurface: Color(0xFFF3F3F3),
    // surfaceVariant: Color.fromARGB(255, 95, 29, 196),
     onSurfaceVariant: Color.fromARGB(255, 255, 255, 255),
  );

  static ColorScheme lightTheme = ColorScheme.light(
    primary: lightAppColors.primaryColor,
    primaryContainer: lightAppColors.whiteColor,
    onPrimaryContainer: lightAppColors.blackColor,
    background: lightAppColors.backGround,
    //onBackground: Color.fromARGB(255, 249, 28, 28),
    onSurface: Color.fromARGB(255, 20, 20, 20),
    onSurfaceVariant: Color.fromARGB(255, 1, 1, 1),
  );
  static final light = ThemeData(
      useMaterial3: true,
      //fontFamily: 'Poppins',
      colorScheme: lightTheme,
      textTheme: TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23.sp,
            fontFamily: "PlayfairDisplay"),
        headline2: TextStyle(
            color: Get.theme.cardColor,
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
            fontFamily: "PlayfairDisplay"),
        bodyText1: TextStyle(
            //color: Colors.grey[700],
            fontWeight: FontWeight.w400,
            fontSize: 17.sp,
            height: 1.5),
        bodyText2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ));
  static final dark = ThemeData(
      useMaterial3: true,
      colorScheme: darkTheme,
      textTheme: TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23.sp,
            fontFamily: "PlayfairDisplay"),
        headline2: TextStyle(
            //color: Get.theme.cardColor,
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
            fontFamily: "PlayfairDisplay"),
        bodyText1: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w400,
            fontSize: 17.sp,
            height: 1.5),
        bodyText2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ));
}
