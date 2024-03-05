import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/buttons.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/customtextformfiled.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/add_place/add_images.dart';
import 'package:sestate/view/screens/add_place/additional_info.dart';
import 'package:sestate/view/screens/add_place/drop_down_widget.dart';
import 'package:sestate/view/screens/add_place/main_info.dart';
import 'package:sestate/view/screens/add_place/rent_or_sale.dart';
import 'package:sestate/view/screens/add_place/room_widgets.dart';
import 'package:sestate/view/widgets/divider.dart';

class AddPlace extends StatelessWidget {
  const AddPlace({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddPlaceControllerImpl());
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: GetBuilder<AddPlaceControllerImpl>(builder: (controller) {
        return SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 20.h,
          ),
          SafeArea(
            child: Text(
              "addplace".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w),
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text("fillyourplaceinfo".tr, style: TextStyles.w50018)),
          ).animate().fade(duration: 1000.ms).saturate(),
          SizedBox(height: 20.h),
          RentOrSaleChooser(
            controller: controller,
          ).animate().fade(duration: 1000.ms).saturate(),
          SizedBox(height: 20.h),
          MainInfo(controller: controller,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "addimages".tr,
                    style: TextStyles.bold14,
                  ),
                  Text("${controller.images.length}/10",
                      style: TextStyles.w40013grey)
                ],
              ),
            ),
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          SizedBox(
            height: 20.h,
          ),
          Align(
              alignment: AlignmentDirectional.centerStart,
              child: AddImages(
                images: const [],
                controller: controller,
              )).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
          const AdditionalInfo()
              .animate()
              .fade(duration: (600.ms))
              .slideY(begin: -0.5),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: Dimensions.screenwidth(context),
              height: 40.h,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              alignment: Alignment.center,
              decoration: AppButtons.decorationButton,
              child: Text(
                "confirm".tr,
                style: TextStyles.w50015White,
              ),
            ),
          ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        ]));
      }),
    );
  }
}
