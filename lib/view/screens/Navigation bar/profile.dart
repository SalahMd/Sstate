import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/view/screens/dark_mode.dart';
import 'package:sestate/view/widgets/divider.dart';
import 'package:sestate/view/screens/change_language.dart';
import 'package:sestate/view/screens/my_account.dart';
import 'package:sestate/view/widgets/list_tile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Icon(
                Icons.person,
                size: 120,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Salah Aldeen Mdaghmesh",
              style: TextStyles.w50020Black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.place_outlined,
                  size: 25,
                  color: AppColors.primaryColor,
                ),
                Text(
                  "Damascus,Syria   ",
                  style: TextStyles.w50020Black,
                ),
              ],
            ),
            SizedBox(height: 40.h),
            InkWell(
              onTap: () {
                Get.to(MyAccount());
              },
              child: ListTiles(
                  leadingIcon: Icons.person_outline,
                  trailingIcon: Icons.arrow_forward_ios_outlined,
                  listText: "myaccount".tr),
            ),
            MyDivider(),
            ListTiles(
                leadingIcon: Icons.settings,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                listText: "settings".tr),
            MyDivider(),
            ListTiles(
                leadingIcon: Icons.favorite_outline,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                listText: "favorite".tr),
            MyDivider(),
            InkWell(
              onTap: () {
                Get.to(ChangeTheLanguage());
              },
              child: ListTiles(
                  leadingIcon: Icons.language,
                  trailingIcon: Icons.arrow_forward_ios_outlined,
                  listText: "changelanguage".tr),
            ),
            MyDivider(),
            InkWell(
              onTap: () {
                Get.to(DarkMode());
              },
              child: ListTiles(
                  leadingIcon: Icons.dark_mode_outlined,
                  trailingIcon: Icons.arrow_forward_ios_outlined,
                  listText: "darkmode".tr),
            ),
            MyDivider(),
            ListTiles(
                leadingIcon: Icons.logout_outlined,
                trailingIcon: Icons.arrow_forward_ios_outlined,
                listText: "logout".tr),
          ],
        ),
      ),
    );
  }
}
