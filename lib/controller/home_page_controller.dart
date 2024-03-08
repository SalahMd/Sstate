import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/functions/geo_locator.dart';
import 'package:sestate/data/model/item_model.dart';
import '../view/screens/category.dart';

abstract class HomePageController extends GetxController {
  displayData();
  goToCategorie(String categoryName);
  getLocation(var position);
}

class HomePageControllerImpl extends HomePageController {
  StatusRequest? statusRequest;
 List<Placemark> placemarks=[];
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
        price: 1500),
    ItemModel(3, 2, 350,
        image: AppImages.img3,
        location: "Mezzeh",
        numOfRooms: 5,
        isForSale: 1,
        price: 5500)
  ];

  @override
  displayData() {}

  @override
  goToCategorie(String categoryName) async {
    Get.to(Category(name: categoryName));
  }

  void onInit() async {
    statusRequest = StatusRequest.loading;
    update();
    try{
    await getLocation(await determinePosition());
    }catch(_){
     statusRequest = StatusRequest.locationError;
      update();
    }
    Future.delayed(Duration(seconds: 2), () {
      if(statusRequest !=StatusRequest.locationError) 
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
