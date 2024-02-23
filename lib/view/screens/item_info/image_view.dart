import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sestate/controller/item_info_controller.dart';
import 'package:sestate/core/functions/dimenesions.dart';

import '../../../core/constants/images.dart';

class ImageView extends StatelessWidget {
  final List images;
  final ItemInfoControllerImpl pageController;
  int currentPage;
  final PageController controller;
  

  ImageView(
      {super.key,
      required this.images,
      required this.currentPage,
      required this.controller,
    
      required this.pageController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenwidth(context),
      height: 340.h,
      child: PageView.builder(
        controller: controller,
        onPageChanged: (val) {
          pageController.onPageChanged(val);
        },
        itemCount: images.length,
        itemBuilder: (context, int i) => Container(
          width: Dimensions.screenwidth(context),
          height: 340.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            child: Image.asset(
              images[i],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
