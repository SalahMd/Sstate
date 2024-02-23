import 'package:flutter/material.dart';
import 'package:sestate/core/constants/colors.dart';

class AppButtons {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColor,
    padding: const EdgeInsets.only(left: 80, right: 80, top: 5, bottom: 5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );
}
