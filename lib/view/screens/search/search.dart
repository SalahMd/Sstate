import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/search/filters.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGround,
        body: Column(children: [
          SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                width: Dimensions.screenwidth(context),
                height: 60,
                child: TextFormField(
                  //controller: controller.searchController,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(),
                    suffixIcon: InkWell(
                      onTap: () {
                        // controller.displayData();
                      },
                      child: Icon(
                        Icons.search,
                        size: 25,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    prefixIcon: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabled: true,
                    hintText: "search".tr,
                    hintStyle: const TextStyle(fontSize: 17),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.only(
                        left: 20, right: 5, top: 15, bottom: 15),
                  ),
                )),
          ),
          Filters()
        ]));
  }
}
