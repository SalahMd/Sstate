import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/home_page_controller.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/home/category_design.dart';
import 'package:sestate/view/screens/home/shimmer_home_page.dart';
import 'package:sestate/view/screens/home/top_bar.dart';
import 'package:sestate/view/widgets/item_design.dart';
import 'package:sestate/view/widgets/shimmer_item.dart';
import 'package:sestate/view/widgets/shimmer_item_design.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: GetBuilder<HomePageControllerImpl>(
        builder: (controller) => SingleChildScrollView(
          child:controller.statusRequest == StatusRequest.success? Column(children: [
            TopBar(
              onTapIcon: () {
                Get.toNamed("AddPlace");
              },
            ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
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
                ),
                CategoryDesign(
                  title: "offices".tr,
                  image: AppImages.cat2,
                )
              ],
            ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryDesign(
                  title: "properties".tr,
                  image: AppImages.cat1,
                ),
                CategoryDesign(title: "clinics".tr, image: AppImages.cat2)
              ],
            ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  "nearby".tr,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ).animate().fade(duration: 500.ms).slideX(begin: 0.2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: 
                  Column(
                      children: [
                        const ItemDesign(
                          image: AppImages.img1,
                          bedRooms: 3,
                          bathRooms: 1,
                          livingRoom: 1,
                          space: 250,
                          price: 3000,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        const ItemDesign(
                          image: AppImages.img2,
                          bedRooms: 4,
                          bathRooms: 2,
                          livingRoom: 2,
                          space: 320,
                          price: 4000,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        const ItemDesign(
                          image: AppImages.img4,
                          bedRooms: 1,
                          bathRooms: 1,
                          livingRoom: 1,
                          space: 80,
                          price: 2000,
                        )
                      ],
                    )
                  
            ).animate().fade(duration: 500.ms).slideY(begin: 0.3),
          ]):ShimmerHomePage(),
        ),
      ),
    );
  }
}
