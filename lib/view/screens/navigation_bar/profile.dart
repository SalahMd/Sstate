import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/profile_controller.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/view/screens/dark_mode.dart';
import 'package:sestate/view/screens/my_appointments.dart';
import 'package:sestate/view/widgets/divider.dart';
import 'package:sestate/view/screens/change_language.dart';
import 'package:sestate/view/screens/my_account.dart';
import 'package:sestate/view/widgets/list_tile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileControllerImpl());
    return WillPopScope(
      onWillPop: exitAlert,
      child: Scaffold(
        body: GetBuilder<ProfileControllerImpl>(
          builder: (controller) => SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: const Icon(
                    Icons.person,
                    size: 120,
                  )
                      .animate()
                      .fade(duration: 400.ms, delay: 300.ms)
                      .slideY(begin: -0.3),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Salah Aldeen Mdaghmesh",
                  style: TextStyles.w50017,
                )
                    .animate()
                    .fade(duration: 400.ms, delay: 350.ms)
                    .slideY(begin: -0.3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.place_outlined,
                      size: 25,
                    )
                        .animate()
                        .fade(duration: 400.ms, delay: 350.ms)
                        .slideY(begin: -0.3),
                    Text(
                      "Damascus,Syria   ",
                      style: TextStyles.w50017,
                    )
                        .animate()
                        .fade(duration: 400.ms, delay: 350.ms)
                        .slideY(begin: -0.3),
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
                          listText: "myaccount".tr)
                      .animate()
                      .fade(duration: 400.ms, delay: 300.ms)
                      .slideY(begin: -0.3),
                ),
                MyDivider(
                  height: 2.h,
                )
                    .animate()
                    .fade(duration: 400.ms, delay: 350.ms)
                    .slideY(begin: -0.3),
                ListTiles(
                        leadingIcon: Icons.settings,
                        trailingIcon: Icons.arrow_forward_ios_outlined,
                        listText: "settings".tr)
                    .animate()
                    .fade(delay: 500.ms)
                    .slideY(begin: -0.3),
                MyDivider(
                  height: 2.h,
                ).animate().fade(delay: 550.ms).slideY(begin: -0.3),
                GestureDetector(
                  onTap: () {
                    Get.to(const MyAppointements());
                  },
                  child: ListTiles(
                          leadingIcon: Icons.calendar_month_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "myappointments".tr)
                      .animate()
                      .fade(delay: 600.ms)
                      .slideY(begin: -0.3),
                ),
                MyDivider(
                  height: 2.h,
                ).animate().fade(delay: 650.ms).slideY(begin: -0.3),
                InkWell(
                  onTap: () {
                    Get.to(ChangeTheLanguage());
                  },
                  child: ListTiles(
                          leadingIcon: Icons.language,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "changelanguage".tr)
                      .animate()
                      .fade(delay: 700.ms)
                      .slideY(begin: -0.3),
                ),
                MyDivider(
                  height: 2.h,
                ).animate().fade(delay: 750.ms).slideY(begin: -0.3),
                InkWell(
                  onTap: () {
                    Get.to(const DarkMode());
                  },
                  child: ListTiles(
                          leadingIcon: Icons.dark_mode_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "darkmode".tr)
                      .animate()
                      .fade(delay: 800.ms)
                      .slideY(begin: -0.3),
                ),
                MyDivider(
                  height: 2.h,
                ).animate().fade(delay: 850.ms).slideY(begin: -0.3),
                GestureDetector(
                  onTap: () {
                    controller.logOut();
                  },
                  child: ListTiles(
                          leadingIcon: Icons.logout_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "logout".tr)
                      .animate()
                      .fade(delay: 900.ms)
                      .slideY(begin: -0.3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
