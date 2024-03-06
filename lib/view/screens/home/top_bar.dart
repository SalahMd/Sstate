import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/text_styles.dart';
import 'package:sestate/core/functions/dimenesions.dart';

class TopBar extends StatelessWidget {
  final void Function() onTapIcon;
  final String? city;
  final String? street;
  const TopBar({super.key, required this.onTapIcon, required this.city, this.street});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(width: 5.w),
                  Text(
                    "location".tr,
                    style: TextStyles.bold17,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 25,
                  ),
                  Text(
                    city!,
                    style: TextStyles.w50017,
                  ),
                  Text(
                    ", ${street!}",
                    style: TextStyles.w40016grey,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("Search");
                },
                child: Container(
                  width: Dimensions.screenwidth(context),
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1.5,
                          blurRadius: 1.5,
                          offset: const Offset(0, 1),
                        ),
                      ]),
                  child: Row(children: [
                    SizedBox(width: 10.w),
                    const Icon(
                      Icons.search,
                      size: 25,
                    ),
                    SizedBox(width: 5.w),
                    Text("search".tr,
                        style: Theme.of(context).textTheme.bodyText1)
                  ]),
                ),
              )
            ]),
          ),
          PositionedDirectional(
            top: 20.h,
            end: 20.w,
            child: GestureDetector(
              onTap: () {
                onTapIcon();
              },
              child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: const [BoxShadow(color: Colors.black)],
                      borderRadius: BorderRadius.circular(12)),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
