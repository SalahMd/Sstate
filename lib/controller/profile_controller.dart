import 'package:get/get.dart';
import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/functions/handeling_data.dart';
import 'package:sestate/core/services/services.dart';
import 'package:sestate/data/remote/logout_back.dart';

abstract class ProfileController extends GetxController {
  logOut();
}

class ProfileControllerImpl extends ProfileController {
  StatusRequest? statusRequest;
  Myservices myServices = Get.find();
  LogOutBack logout =  LogOutBack(Get.put(Crud()));
  @override
  logOut() async {
    statusRequest = StatusRequest.loading;
    var token = myServices.sharedPreferences.getString("token");
    var response = await logout.postData(token);
    statusRequest = hadelingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        myServices.sharedPreferences.clear();
        Get.offNamed("ChooseLanguage");
      } else {
        print("error");
      }
    } else {print("error");}
  }
}
