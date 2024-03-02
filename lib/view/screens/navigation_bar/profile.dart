import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/profile_controller.dart';
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
    Get.put(ProfileControllerImpl());
    return Scaffold(
      body: GetBuilder<ProfileControllerImpl>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              const SafeArea(
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
                  Get.to(const MyAccount());
                },
                child: ListTiles(
                    leadingIcon: Icons.person_outline,
                    trailingIcon: Icons.arrow_forward_ios_outlined,
                    listText: "myaccount".tr),
              ),
              const MyDivider(),
              ListTiles(
                  leadingIcon: Icons.settings,
                  trailingIcon: Icons.arrow_forward_ios_outlined,
                  listText: "settings".tr),
              const MyDivider(),
              ListTiles(
                  leadingIcon: Icons.favorite_outline,
                  trailingIcon: Icons.arrow_forward_ios_outlined,
                  listText: "favorite".tr),
              const MyDivider(),
              InkWell(
                onTap: () {
                  Get.to(ChangeTheLanguage());
                },
                child: ListTiles(
                    leadingIcon: Icons.language,
                    trailingIcon: Icons.arrow_forward_ios_outlined,
                    listText: "changelanguage".tr),
              ),
              const MyDivider(),
              InkWell(
                onTap: () {
                  Get.to(DarkMode());
                },
                child: ListTiles(
                    leadingIcon: Icons.dark_mode_outlined,
                    trailingIcon: Icons.arrow_forward_ios_outlined,
                    listText: "darkmode".tr),
              ),
              const MyDivider(),
              GestureDetector(
                onTap: () {
                  controller.logOut();
                  print("logout");
                },
                child: ListTiles(
                    leadingIcon: Icons.logout_outlined,
                    trailingIcon: Icons.arrow_forward_ios_outlined,
                    listText: "logout".tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
