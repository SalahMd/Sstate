import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/favorite_controller.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/view/widgets/item_design.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteControllerImpl());
    return WillPopScope(
      onWillPop: exitAlert,
      child: GetBuilder<FavoriteControllerImpl>(
        builder: (controller) => Scaffold(
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20.h,
              ),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 15),
                child: Text(
                  "myfavorite".tr,
                  style: Theme.of(context).textTheme.headline1,
                ),
              )),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 30.h),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemDesign(
                          image: controller.items[index].image,
                          bedRooms: controller.items[index].numOfRooms,
                          bathRooms: controller.items[index].numOfBathrooms,
                          livingRoom: controller.items[index].numOfKitchens,
                          space: controller.items[index].space,
                          price: controller.items[index].price,
                        );
                    }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
