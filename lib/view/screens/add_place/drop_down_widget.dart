import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/textstyles.dart';

class DropDownWidget extends StatelessWidget {
  final AddPlaceControllerImpl controller;
  final String title;
  final List<DropdownMenuItem<String>> choices;
  String elementValue;
   String elementValue2;
  DropDownWidget(
      {super.key,
      required this.controller,
      required this.title,
      required this.choices,
      required this.elementValue, required this.elementValue2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: Text(title, style: TextStyles.w50015Black))),
        Expanded(
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              //width: Dimensions.screenwidth(context) / 2,
              height: 50.h,
              child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(15),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                value: elementValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                // key: controller.category,
                style: TextStyles.w50014Black,
                onChanged: (String? value) {
                  elementValue = value!;
                  elementValue2 = value;
                  controller.update();
                },
                items: choices,

                //}).toList(),
              )),
        ),
      ],
    ).animate().fade(duration: (600.ms)).slideY(begin: -0.5);
  }
}
