import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/view/widgets/profile_text_filed.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightAppColors.backGround,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 40.h,
          ),
          ProfileTextFiled(
              hinttext: "Salah Aldeen Mdaghmesh",
              icontext: Icons.person_outline),
          SizedBox(height: 10.h),
          ProfileTextFiled(
              hinttext: "0987654321", icontext: Icons.phone_outlined),
          SizedBox(height: 10.h),
          ProfileTextFiled(
              hinttext: "salahmdaghmesh@gmail.com",
              icontext: Icons.mail_outline),
          SizedBox(height: 10.h),
          ProfileTextFiled(
              hinttext: "Salah Aldeen Mdaghmesh",
              icontext: Icons.person_outline),
          SizedBox(height: 10.h),
        ]),
      ),
    );
  }
}
