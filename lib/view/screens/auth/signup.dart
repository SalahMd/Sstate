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
    Get.put(SignUpControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: GetBuilder<SignUpControllerImpl>(builder: (controller) {
        return Form(
          key: controller.formState,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 10.h,
              ),
              SafeArea(
                  child: Text(
                "addinfo".tr,
                style: Theme.of(context).textTheme.headline1,
              )),
              SizedBox(height: 20.h),
              Icon(
                Icons.person,
                size: 120,
                color: AppColors.primaryColor,
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Customtextformfiled(
                        hinttext: "firstname1".tr,
                        labelText: "firstname2".tr,
                        icondata: Icons.person_outline,
                        controller: controller.firstName,
                        min: 3,
                        max: 10,
                        isnumber: false,
                        ispassword: false),
                  ),
                  Expanded(
                    child: Customtextformfiled(
                        hinttext: "lastname1".tr,
                        labelText: "lastname2".tr,
                        icondata: Icons.person_outline,
                        controller: controller.lastName,
                        min: 3,
                        max: 10,
                        isnumber: false,
                        ispassword: false),
                  )
                ],
              ),
              Customtextformfiled(
                  hinttext: "phone1".tr,
                  labelText: "phone2".tr,
                  icondata: Icons.phone_outlined,
                  controller: controller.phoneController,
                  min: 10,
                  max: 10,
                  isnumber: true,
                  ispassword: false),
              Customtextformfiled(
                hinttext: "email1".tr,
                labelText: "email2".tr,
                icondata: Icons.mail_outline,
                controller: controller.passwordController,
                min: 7,
                max: 25,
                isnumber: false,
                ispassword: false,
                //ontapicon: controller.showPassword(),
              ),
              Customtextformfiled(
                hinttext: "password1".tr,
                labelText: "password2".tr,
                icondata: Icons.lock_outline,
                controller: controller.passwordController,
                min: 7,
                max: 15,
                isnumber: false,
                ispassword: controller.isshown,
                ontapicon: controller.showPassword(),
              ),
              Customtextformfiled(
                hinttext: "confirmpassword1".tr,
                labelText: "confirmpassword2".tr,
                icondata: Icons.lock_outline,
                controller: controller.passwordController,
                min: 7,
                max: 15,
                isnumber: false,
                ispassword: controller.isshown,
                ontapicon: controller.showPassword(),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "alreadyhaveaccount".tr,
                  ),
                  TextButton(
                      onPressed: () {
                        controller.goToLogiIn();
                      },
                      child: Text("login".tr))
                ],
              )
            ]),
          ),
        );
      }),
    );
  }
}
