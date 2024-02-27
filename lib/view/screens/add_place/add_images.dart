// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:sestate/controller/add_place_controller.dart';
// import 'package:sestate/core/constants/colors.dart';

// class AddImages extends StatelessWidget {
//   final List<String> images;
//   final AddPlaceControllerImpl controller;
//   const AddImages({super.key, required this.images, required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             alignment: AlignmentDirectional.centerStart,
//             width: 120 * images.length + 1.w,
//             height: 120.h,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 //physics: NeverScrollableScrollPhysics(),
//                 itemCount: images.length + 1,
//                 itemBuilder: (BuildContext context, int index) {
//                   return index != images.length
//                       ? Stack(
//                           children: [
//                             Container(
//                               width: 80.w,
//                               height: 120.h,
//                               margin: EdgeInsets.symmetric(horizontal: 10.w),
//                               decoration: BoxDecoration(
//                                   // color: AppColors.whiteColor,
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: Image.asset(
//                                   images[index],
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ),
//                             PositionedDirectional(
//                                 start: 15.w,
//                                 top: 8.h,
//                                 child: GestureDetector(
//                                     onTap: () {
//                                       images.removeAt(index);
//                                       controller.update();
//                                       print(images.length);
//                                     },
//                                     child: Icon(Icons.cancel_outlined)))
//                           ],
//                         )
//                       : GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                               width: 80.w,
//                               height: 60.h,
//                               margin: EdgeInsets.symmetric(horizontal: 10.w),
//                               alignment: Alignment.center,
//                               decoration: BoxDecoration(
//                                   color: AppColors.whiteColor,
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Icon(
//                                 Icons.add,
//                                 size: 35,
//                                 color: AppColors.greyColor,
//                               )),
//                         );
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sestate/controller/add_place_controller.dart';
import 'package:sestate/core/constants/colors.dart';

class AddImages extends StatefulWidget {
  final List<String> images;
  final AddPlaceControllerImpl controller;

  const AddImages({Key? key, required this.images, required this.controller})
      : super(key: key);

  @override
  _AddImagesState createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  late List<String> localImages;

  @override
  void initState() {
    super.initState();
    localImages = List.from(widget.images);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            width: 120 * localImages.length + 1.w,
            height: 120.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: localImages.length + 1,
              itemBuilder: (BuildContext context, int index) {
                return index != localImages.length
                    ? Stack(
                        children: [
                          Container(
                            width: 80.w,
                            height: 120.h,
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                localImages[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            start: 15.w,
                            top: 8.h,
                            child: GestureDetector(
                              onTap: () {
                                // Use setState to trigger a rebuild
                                setState(() {
                                  localImages.removeAt(index);
                                });
                                widget.controller.update();
                                print(localImages.length);
                              },
                              child: Icon(Icons.cancel_outlined),
                            ),
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 80.w,
                          height: 60.h,
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 35,
                            color: AppColors.greyColor,
                          ),
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
