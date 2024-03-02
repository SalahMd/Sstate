import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sestate/controller/buttombarcontroller.dart';
import 'package:sestate/core/constants/colors.dart';

class ButtomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(ButtomBarControllerImp());
    return GetBuilder<ButtomBarControllerImp>(
      builder: (controllerImp) => Scaffold(
        bottomNavigationBar: Container(
          color: lightAppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            child: GNav(
                selectedIndex: 1,
                hoverColor: lightAppColors.whiteColor,
                backgroundColor: lightAppColors.primaryColor,
                gap: 8.w,
                color: lightAppColors.whiteColor,
                activeColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10), // navigation bar padding
                onTabChange: (index) {
                  controllerImp.changePage(index);
                },
                textSize: 2,
                haptic: true, // haptic feedback
                textStyle: TextStyle(fontSize: 15.sp, color: Colors.blue),
                tabs: const [
                  GButton(
                    icon: Icons.account_circle_outlined,
                    text: 'Profile',
                    //    textSize: 5,
                  ),
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite_outline,
                    text: 'Favourite',
                  ),
                ]),
          ),
        ),
        body: controllerImp.listPage.elementAt(controllerImp.currentPage),
      ),
    );
  }
}
