import 'package:get/get.dart';
import 'package:sestate/core/class/statusrequest.dart';

abstract class HomePageController extends GetxController {
  displayData();
  goToCategorie();
}

class HomePageControllerImpl extends HomePageController {
  StatusRequest? statusRequest;
  @override
  displayData() {}

  @override
  goToCategorie() {
    // TODO: implement goToCategorie
    throw UnimplementedError();
  }

  void onInit() {
    statusRequest = StatusRequest.loading;
    update();
    Future.delayed(Duration(seconds:8), () {
      statusRequest = StatusRequest.success;
      update();
    });
    super.onInit();
  }
}
