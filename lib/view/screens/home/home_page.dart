import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/home_page_controller.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/view/screens/home/category_design.dart';
import 'package:sestate/view/screens/home/shimmer_home_page.dart';
import 'package:sestate/view/screens/home/top_bar.dart';
import 'package:sestate/view/widgets/item_design.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImpl());
    return WillPopScope(
      onWillPop: exitAlert,
      child: Scaffold(
        body: GetBuilder<HomePageControllerImpl>(
          builder: (controller) => SingleChildScrollView(
            child: controller.statusRequest == StatusRequest.success
                ? Column(children: [
                    TopBar(
                      onTapIcon: () {
                        Get.toNamed("AddPlace");
                      },
                      city: controller.placemarks[0].locality,
                      street: controller.placemarks[0].street,
                    ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "categories".tr,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ).animate().fade(duration: 500.ms).slideX(begin: 0.2),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryDesign(
                          title: "apartments".tr,
                          image: AppImages.cat1,
                          onTap: () {
                            controller.goToCategorie("apartments");
                          },
                        ),
                        CategoryDesign(
                          title: "offices".tr,
                          image: AppImages.cat3,
                          onTap: () {
                            controller.goToCategorie("offices");
                          },
                        )
                      ],
                    ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryDesign(
                          title: "properties".tr,
                          image: AppImages.cat4,
                          onTap: () {
                            controller.goToCategorie("properties");
                          },
                        ),
                        CategoryDesign(
                          title: "clinics".tr,
                          image: AppImages.cat2,
                          onTap: () {
                            controller.goToCategorie("clinics");
                          },
                        )
                      ],
                    ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Text(
                          "nearby".tr,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ).animate().fade(duration: 500.ms).slideX(begin: 0.2),
                    Column(
                      children: [
                        ListView.builder(
                            padding: EdgeInsets.only(bottom: 30.h),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return const ItemDesign(
                                image: AppImages.img2,
                                bedRooms: 4,
                                bathRooms: 2,
                                livingRoom: 2,
                                space: 320,
                                price: 4000,
                              );
                            }),
                      ],
                    ).animate().fade(duration: 500.ms).slideY(begin: 0.3),
                  ])
                : const ShimmerHomePage(),
          ),
        ),
      ),
    );
  }
}
