import 'package:get/get.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/constants/animations.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/data/model/item_model.dart';

abstract class MyAppointmentsController extends GetxController {
  deleteAppointment();
  displayData();
  confirmDeleting();
}

class MyAppointmentsControllerImpl extends MyAppointmentsController {
  bool isDeleted = false;
  List<ItemModel> items = [
    ItemModel(2, 2, 310,
        image: AppImages.img1,
        location: "Muhajrin",
        numOfRooms: 4,
        isForSale: 1,
        price: 2500),
    ItemModel(1, 1, 240,
        image: AppImages.img2,
        location: "Malki",
        numOfRooms: 3,
        isForSale: 1,
        price: 1500)
  ];
  StatusRequest? statusRequest;
  @override
  deleteAppointment() {
    alertWithActions("deletingapointment".tr, confirmDeleting);
  }

  @override
  confirmDeleting() {
    Get.back();
    animationedAlert(AppAnimations.deleting, "appointmentisdeleted".tr);
    update();
  }

  @override
  displayData() {}
}
