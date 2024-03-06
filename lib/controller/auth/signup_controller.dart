import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/functions/handeling_data.dart';
import 'package:sestate/data/remote/auth/signup_back.dart';

abstract class SignUpController extends GetxController{
 goToLogiIn();
  goToSuccessfulSignUp();
  showPassword();
}
class SignUpControllerImpl extends SignUpController{
  late TextEditingController firstName;
  late TextEditingController phoneController;
  late TextEditingController lastName;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController email;
  GlobalKey<FormState> formState =  GlobalKey<FormState>();
  SignUpBack signup_back = SignUpBack(Get.put(Crud()));
  StatusRequest? statusRequest;
  bool isshown = true;

  @override
  showPassword() {
    isshown = !isshown;
    update();
  }

  @override
  goToLogiIn() {
    Get.offNamed("Login");
  }
  
  @override
  goToSuccessfulSignUp() async{
     var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signup_back.postData(
          firstName.text,
          lastName.text,
          email.text,
          phoneController.text,
          passwordController.text);
      statusRequest = hadelingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed("Login");
        } else {
          Get.defaultDialog(title: "", middleText: "warningbody2".tr);
        }
      }
      update();
    } else {
      print("Not Valid");
    }
   
  }
   @override
  void onInit() {
    phoneController = TextEditingController();
    lastName = TextEditingController();
    firstName = TextEditingController();
    email = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phoneController.dispose();
    lastName.dispose();
    firstName.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    email.dispose();
    super.dispose();
  }
}