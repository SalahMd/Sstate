import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';

class AppTheme {
  static var darkTheme = ColorScheme.dark(
    primary: darkAppColors.primaryColor,
    onSecondary: Colors.amber,
    //for numbers after picking in date picker
    onPrimary: Colors.amber,

    primaryContainer: darkAppColors.whiteColor,
    onPrimaryContainer: Color.fromARGB(255, 250, 248, 248),
    onErrorContainer: Color(0xFFF9DEDC),
    outline: Color(0xFF938F99),
    background: Colors.grey[900]!,
    onBackground: Color.fromARGB(255, 2, 2, 2),
    surface: Color.fromARGB(255, 52, 50, 50),
    onSurface: Color(0xFFF3F3F3),
    surfaceVariant: Color.fromARGB(255, 222, 52, 30),
    //for chips after picking
    inversePrimary: Colors.indigo,
    inverseSurface: Colors.white,
    onInverseSurface: Colors.white,
    onSecondaryContainer: Colors.amber,
    onTertiaryContainer: Colors.amber,
    onTertiary: Colors.amber,
    tertiary: Colors.amber,
    scrim: Colors.amber,
    secondary: Colors.amber,
    //for dividers
    outlineVariant: Colors.grey[600],
    secondaryContainer: Colors.amber,
    //for textfileds
    onSurfaceVariant: Color.fromARGB(255, 254, 254, 254),
  );

  static ColorScheme lightTheme = ColorScheme.light(
    primary: lightAppColors.primaryColor,
    primaryContainer: lightAppColors.whiteColor,
    onPrimaryContainer: lightAppColors.blackColor,
    background: lightAppColors.backGround,
    //for date picker
    surface: lightAppColors.whiteColor,
    surfaceVariant: lightAppColors.blackColor,
    onSurface: lightAppColors.blackColor,
    onSurfaceVariant: lightAppColors.blackColor,
        outlineVariant: Colors.grey[600],

  );
  static final light = ThemeData(
      useMaterial3: true,
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
            fontWeight: FontWeight.w400, fontSize: 17.sp, height: 1.5),
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
