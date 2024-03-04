import 'package:flutter/material.dart';
import 'package:sestate/core/constants/textstyles.dart';

class ProfileTextFiled extends StatelessWidget {
  final String hinttext;
  final IconData icontext;

  const ProfileTextFiled(
      {super.key, required this.hinttext, required this.icontext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          fontSize: 19,
        ),
        hintText: hinttext,
        hintStyle: TextStyles.bold14,
        //contentPadding: EdgeInsets.only(right: 100),
        prefixIcon: Icon(
          icontext,
          size: 20,
        ),
      ),
    );
  }
}
