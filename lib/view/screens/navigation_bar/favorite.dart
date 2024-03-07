import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/view/widgets/item_design.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: exitAlert,
      child: Scaffold(
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
                  itemCount: 2,
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
            )
          ]),
        ),
      ),
    );
  }
}
