import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/functions/handelingdata.dart';
import 'package:sestate/core/services/services.dart';
import 'package:sestate/data/remote/auth/login_back.dart';
import 'package:sestate/view/screens/home/home_page.dart';
import 'package:sestate/view/screens/navigation_bar/nav_bar.dart';

abstract class LogiInController extends GetxController {
  logIn();
  goToHomePage();
  goToSignup();
  showPassword();
}

class LogInControllerImpl extends LogiInController {
  GlobalKey<FormState> formState = new GlobalKey<FormState>();
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  LoginData loginData = new LoginData(Get.put(Crud())); //(Get.find)
  StatusRequest? statusRequest;
  Myservices myServices = Get.find();
  bool isshown = true;

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
    // if (formdata!.validate()) {
    //   statusRequest = StatusRequest.loading;
    //   update();
    //   var response = await loginData.postData(
    //       phoneController.text, passwordController.text);
    //   statusRequest = hadelingData(response);
    //   if (StatusRequest.success == statusRequest) {
    //     if (response['status'] == "success") {
    //       if (response['user']['role_id'] == 2) {
    //         myServices.sharedPreferences.setInt("id", response['user']["id"]);
    //         myServices.sharedPreferences
    //             .setString("first_name", response['user']['first_name']);
    //         myServices.sharedPreferences
    //             .setString("phone_number", response['user']['phone_number']);
    //         myServices.sharedPreferences
    //             .setString("last_name", response['user']['last_name']);
    //         myServices.sharedPreferences
    //             .setString("token", response['user']["accessToken"]);
    //         myServices.sharedPreferences.setString("step", "2");
    //         Get.offNamed("HomePage");
    //       } else {
    //       //wrongLogin();
    //       update();
    //     }
    //     } else {
    //       //wrongLogin();
    //       update();
    //     }
    //   } else {

    //   }
    //   update();
    // } else
    //   print("Not Valid");

    Get.to(ButtomBar());
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
