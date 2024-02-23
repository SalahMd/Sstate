import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/view/screens/add_place.dart';
import 'package:sestate/view/screens/home/home_page.dart';
import 'package:sestate/view/screens/profile.dart';
import 'package:sestate/view/screens/settings.dart';



abstract class ButtomBarController extends GetxController {
  changePage(int currentPage);
}

class ButtomBarControllerImp extends ButtomBarController {
  int currentPage = 1;
  List<Widget> listPage = [Settings(), HomePage(), Profile(),AddPlace()];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}