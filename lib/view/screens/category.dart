import 'package:flutter/material.dart';
import 'package:sestate/core/constants/colors.dart';

class Category extends StatelessWidget {
  final String name;
  Category({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightAppColors.backGround,
      body: SingleChildScrollView(
          child: Column(
        children: [],
      )),
    );
  }
}
