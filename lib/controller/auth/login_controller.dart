import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/functions/handelingdata.dart';
import 'package:sestate/core/services/services.dart';
import 'package:sestate/data/remote/auth/login_back.dart';
import 'package:sestate/view/screens/navigation_bar/nav_bar.dart';

abstract class LogiInController extends GetxController {
  logIn();
  goToHomePage();
  goToSignup();
  showPassword();
}

class LogInControllerImpl extends LogiInController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  LoginData loginData = LoginData(Get.put(Crud())); //(Get.find)
  StatusRequest? statusRequest;
  Myservices myServices = Get.find();
  bool isshown = true;
  double containerWidth = 300.w;
  hideButton() {
    containerWidth = 0;
    update();
    Future.delayed(Duration(seconds: 2), () {
      logIn();
    });

    update();
  }

  @override
  goToHomePage() {
    update();
    Get.offAllNamed("HomePage");
  }

  @override
  showPassword() {
    isshown = !isshown;
    update();
  }

  @override
  logIn() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
          phoneController.text, passwordController.text);
      statusRequest = hadelingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences.setInt("id", response['data']["id"]);
          myServices.sharedPreferences
              .setString("first_name", response['data']['first_name']);
          // myServices.sharedPreferences
          //     .setString("phone_number", response['user']['phone_number']);
          myServices.sharedPreferences
              .setString("last_name", response['data']['last_name']);
          myServices.sharedPreferences
              .setString("email", response['data']['email']);
          myServices.sharedPreferences
              .setString("token", response['data']["accessToken"]);
          myServices.sharedPreferences.setString("step", "2");
          Get.off(ButtomBar());
        } else {
          update();
        }
      } else {}
      update();
    }
  }

  @override
  goToSignup() {
    Get.offNamed("SignUp");
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
}
