import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/view/screens/add%20place/add_place.dart';
import 'package:sestate/view/screens/Navigation%20bar/favorite.dart';
import 'package:sestate/view/screens/home/home_page.dart';
import 'package:sestate/view/screens/Navigation%20bar/profile.dart';
import 'package:sestate/view/screens/settings.dart';

abstract class ButtomBarController extends GetxController {
  changePage(int currentPage);
}

class ButtomBarControllerImp extends ButtomBarController {
  int currentPage = 1;
  List<Widget> listPage = [Profile(), HomePage(), Favorite(),];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
