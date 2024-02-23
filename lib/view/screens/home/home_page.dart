import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/view/screens/home/category_design.dart';
import 'package:sestate/view/screens/home/top_bar.dart';
import 'package:sestate/view/widgets/item_design.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 239),
      body: SingleChildScrollView(
        child: Column(children: [
         const TopBar(),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "categories".tr,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryDesign(
                title: "Apartments",
                image: AppImages.cat1,
              ),
              CategoryDesign(
                title: "Offices",
                image: AppImages.cat2,
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryDesign(
                title: "Properties",
                image: AppImages.cat3,
              ),
              CategoryDesign(title: "Clincs", image: AppImages.cat4)
            ],
          ),
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Column(
              children: [
                const ItemDesign(image: AppImages.img1, bedRooms: 3, bathRooms: 1, livingRoom: 1, space: 250, price: 3000,),
                SizedBox(
                  height: 30.h,
                ),
                const ItemDesign(image: AppImages.img2, bedRooms: 4, bathRooms: 2, livingRoom: 2, space: 320, price: 4000,)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
