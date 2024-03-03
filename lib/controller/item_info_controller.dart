import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/animations.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/core/functions/dimenesions.dart';

abstract class ItemInfoController extends GetxController {
  nextImage();
  dispData();
  onPageChanged(int index);
  dialogConfirming(var animation, String title);
  makeDate();
}

class ItemInfoControllerImpl extends ItemInfoController {
  int currentPage = 0;
  var date;
  late PageController imageController;
  
  @override
  dispData() {}
 
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

  @override
  dialogConfirming(animation, String title) async {
    await animationedAlert(null, title, makeDate);
  }

  @override
  makeDate() {}
}
