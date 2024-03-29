import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/auth/login_controller.dart';
import 'package:sestate/core/constants/buttons.dart';
import 'package:sestate/core/constants/custom_text_form_filed.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/core/functions/alerts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LogInControllerImpl());
    return WillPopScope(
    onWillPop:exitAlert,
      child: Scaffold(
        body: GetBuilder<LogInControllerImpl>(builder: (controller) {
          return Form(
            key: controller.formState,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    SafeArea(
                      child: Text(
                        "welcome".tr,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                        height: 170.h,
                        width: 170.w,
                        child: Image.asset(
                          AppImages.cat1,
                          fit: BoxFit.fill,
                        )),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "logintocontinue".tr,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ),
                    Customtextformfiled(
                        hinttext: "phone1".tr,
                        labelText: "phone2".tr,
                        icondata: Icons.phone,
                        controller: controller.phoneController,
                        min: 10,
                        max: 20,
                        isnumber: false,
                        ispassword: false),
                    SizedBox(
                      height: 5.h,
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
                    SizedBox(height: 50.h),
                    GestureDetector(
                      onTap: () {
                        controller.hideButton();
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 600),
                        width: controller.containerWidth,
                        height: 40.h,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        alignment: Alignment.center,
                        decoration: AppButtons.decorationButton,
                        child: SingleChildScrollView(
                          child: Text(
                            "login".tr,
                            style: TextStyles.w50015White,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("createaccount".tr),
                        TextButton(
                          child: Text(
                            "signup".tr,
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {
                            controller.goToSignup();
                          },
                        )
                      ],
                    ),
                  ]),
            ),
          );
        }),
      ),
    );
  }
}
