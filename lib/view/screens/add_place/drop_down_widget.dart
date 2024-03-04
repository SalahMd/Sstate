import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/textstyles.dart';

// ignore: must_be_immutable
class DropDownWidget extends StatelessWidget {
  final String title;
  final List<DropdownMenuItem<String>> choices;
  final AddPlaceControllerImpl controller;
  String elementValue;

  DropDownWidget({
    super.key,
    required this.title,
    required this.choices,
    required this.elementValue,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Text(title.tr, style: TextStyles.bold14),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 50.h,
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              iconSize: 20,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              value: elementValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              onChanged: (String? value) {
                controller.updateDropDownValue(value, title);
              },
              items: choices,
            ),
          ),
        ),
      ],
    ).animate().fade(duration: (600.ms)).slideY(begin: -0.5);
  }
}
