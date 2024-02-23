import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemInfoController extends GetxController {
  nextImage();
  dispData();
  onPageChanged(int index);
}

class ItemInfoControllerImpl extends ItemInfoController {
  int currentPage = 0;
  late PageController imageController;
  @override
  dispData() {
    // TODO: implement dispData
    throw UnimplementedError();
  }

  @override
  nextImage() {
     currentPage++;
    imageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  void onInit() {
    imageController = PageController();
    super.onInit();
  }
}
