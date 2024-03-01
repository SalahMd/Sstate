import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/functions/geo_locator.dart';

import '../view/screens/category.dart';

abstract class HomePageController extends GetxController {
  displayData();
  goToCategorie(String categoryName);
  getLocation(var position);
}

class HomePageControllerImpl extends HomePageController {
  StatusRequest? statusRequest;
  late List<Placemark> placemarks;
  @override
  displayData() {}

  @override
  goToCategorie(String categoryName) async {
    Get.to(Category(name: categoryName));
  }

  void onInit() async {
    await getLocation(await determinePosition());
    statusRequest = StatusRequest.loading;
    update();
    Future.delayed(Duration(seconds: 2), () {
      statusRequest = StatusRequest.success;
      update();
    });
    super.onInit();
  }

  @override
  getLocation(var position) async {
    placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print("Your city is :" + "${placemarks[0].locality}");
    print("\nYour street is :" + "${placemarks[0].street}");
  }
}
