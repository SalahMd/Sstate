import 'package:flutter/material.dart';
import 'package:sestate/core/constants/colors.dart';

import '../functions/validinput.dart';

class Customtextformfiled extends StatelessWidget {
  final String hinttext;
  final String labelText;
  final IconData icondata;
  final TextEditingController? controller;
  final int min;
  final int max;
  final bool isnumber;
  final bool ispassword;
  final bool? isBorder;
  final int? maxLines;
  final void Function()? ontapicon;
  Customtextformfiled(
      {super.key,
      required this.hinttext,
      required this.labelText,
      required this.icondata,
      required this.controller,
      required this.min,
      required this.max,
      required this.isnumber,
      required this.ispassword,
      this.ontapicon,
      this.isBorder,
      TextStyle? style,
      this.maxLines,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: TextFormField(
        obscureText: ispassword,
        keyboardType: isnumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: (val) {
          return validInput(val!, min, max);
        },
        //maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
          enabled: true,
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 17),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          label: Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              labelText,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: ontapicon,
            child: Icon(
              icondata,
              color: AppColors.primaryColor,
            ),
          ),
          focusedBorder: isBorder == null
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: AppColors
                          .primaryColor), // Change the focused border color here
                )
              : null,
        ),
      ),
    );
  }
}
