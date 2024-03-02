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
  String val = "1";

  DropDownWidget({
    Key? key,
    required this.controller,
    required this.title,
    required this.choices,
    required this.elementValue,
    required this.elementValue2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String localElementValue = elementValue; // Use a local variable

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Text(title, style: TextStyles.w50015Black),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 50.h,
            child: DropdownButton<String>(
              key: ValueKey(elementValue),

              borderRadius: BorderRadius.circular(15),
              iconSize: 20,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              value: elementValue, // Use the local variable
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: TextStyles.w50014Black,
              onChanged: (String? value) {
                print("Dropdown onChanged: $value");
                //controller.updateDropDownValue(value);
                elementValue = value!;
                controller.update();
              },
              items: choices,
            ),
          ),
        ),
      ],
    ).animate().fade(duration: (600.ms)).slideY(begin: -0.5);
  }
}
