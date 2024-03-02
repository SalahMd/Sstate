import 'package:flutter/material.dart';
import 'package:sestate/core/constants/colors.dart';

Future<String?> selectDate(BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context,
    firstDate: DateTime.now(),
    barrierColor: lightAppColors.primaryColor,
    lastDate: DateTime(2025),
    initialDate: DateTime.now(),
  );

  if (picked != null) {
    String formattedDate = "${picked.year}-${picked.month}-${picked.day}";
    print(formattedDate);
    return formattedDate;
  } else {
    return null;
  }
}
