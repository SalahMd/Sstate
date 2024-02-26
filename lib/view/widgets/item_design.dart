import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/images.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/view/screens/item_info/item_info.dart';

class ItemDesign extends StatelessWidget {
  final String image;
  final int bedRooms;
  final int bathRooms;
  final int livingRoom;
  final double space;
  final double price;
  const ItemDesign(
      {super.key,
      required this.image,
      required this.bedRooms,
      required this.bathRooms,
      required this.livingRoom,
      required this.space,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ItemInfo());
      },
      child: Container(
        height: 350.h,
        width: Dimensions.screenwidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.whiteColor,
          boxShadow: [],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                width: Dimensions.screenwidth(context),
                height: 200.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("For sale")
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                  child: Row(children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.location_on,
                  size: 25,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Muhajjrin",
                  style: TextStyles.bold22Black,
                ),
              ])),
              Expanded(
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    price.toString() + "\$",
                    style: TextStyles.bold22Black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5.h),
          Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
              child: Text(
                "Muhajjrin/Third avenue/Shatta",
                style: TextStyles.w40013grey,
              )),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 65.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.2)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.bed_outlined,
                        size: 18,
                      ),
                      Text(
                        bedRooms.toString(),
                        style: TextStyles.w40013grey,
                      )
                    ]),
              ),
              Container(
                //   margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 65.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.2)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.bathroom_outlined,
                        size: 18,
                      ),
                      Text(
                        bathRooms.toString(),
                        style: TextStyles.w40013grey,
                      )
                    ]),
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 65.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.2)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.living_outlined,
                        size: 18,
                      ),
                      Text(
                        livingRoom.toString(),
                        style: TextStyles.w40013grey,
                      )
                    ]),
              ),
              Container(
                //  margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 65.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.2)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Icon(
                        Icons.space_bar_outlined,
                        size: 18,
                      ),
                      Text(
                        space.toString(),
                        style: TextStyles.w40013grey,
                      )
                    ]),
              )
            ],
          )
        ]),
      ),
    );
  }
}
