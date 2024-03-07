import 'package:get/get.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/data/model/item_model.dart';

abstract class FavoriteController extends GetxController {
  displayData();

}
class FavoriteControllerImpl extends FavoriteController{
   List<ItemModel> items = [
    ItemModel(2, 2, 310,
        image: AppImages.img1,
        location: "Muhajrin",
        numOfRooms: 2,
        isForSale: 1,
        price: 2100),
    ItemModel(3, 1, 240,
        image: AppImages.img2,
        location: "Malki",
        numOfRooms: 3,
        isForSale: 1,
        price: 1700)
  ];
  @override
  displayData() {
    // TODO: implement displayData
    throw UnimplementedError();
  }

}
