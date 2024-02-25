import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  displayData();
  goToCategorie();
}

class HomePageControllerImpl extends HomePageController {
  @override
  displayData() {
    
  }

  

  @override
  goToCategorie() {
    // TODO: implement goToCategorie
    throw UnimplementedError();
  }

  void onInit() {
    super.onInit();
  }
}
