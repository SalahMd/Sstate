import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/auth/signup_controller.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/customtextformfiled.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: GetBuilder<SignUpControllerImpl>(builder: (controller) {
        return Column(children: [
          SizedBox(
            height: 10.h,
          ),
          SafeArea(
              child: Text(
            "addinfo".tr,
            style: Theme.of(context).textTheme.headline1,
          )),
         Row(children: [Expanded(child:  Customtextformfiled(
              hinttext: "firstname1",
              labelText: "firstname2",
              icondata: Icons.person_outline,
              controller: controller.firstName,
              min: 3,
              max: 10,
              isnumber: false,
              ispassword: false)
          ,),
          Expanded(child: Customtextformfiled(
              hinttext: "lastname1",
              labelText: "lastname2",
              icondata: Icons.person_outline,
              controller: controller.lastName,
              min: 3,
              max: 10,
              isnumber: false,
              ispassword: false),)
          
          ],),
          Customtextformfiled(
              hinttext: "phone1",
              labelText: "phone2",
              icondata: Icons.phone_outlined,
              controller: controller.phoneController,
              min: 10,
              max: 10,
              isnumber: true,
              ispassword: false),
              Customtextformfiled(
              hinttext: "password1",
              labelText: "password2",
              icondata: Icons.lock_outline,
              controller: controller.passwordController,
              min: 7,
              max: 15,
              isnumber: false,
              ispassword: controller.isshown,ontapicon: controller.showPassword(),),
        ]);
      }),
    );
  }
}
