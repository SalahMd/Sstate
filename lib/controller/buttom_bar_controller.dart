import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/view/screens/navigation_bar/favorite.dart';
import 'package:sestate/view/screens/home/home_page.dart';
import 'package:sestate/view/screens/navigation_bar/profile.dart';


abstract class ButtomBarController extends GetxController {
  changePage(int index);
}

class ButtomBarControllerImp extends ButtomBarController {
  int currentPage = 1;
  List<Widget> listPage = [const Profile(), const HomePage(), const Favorite(),];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
