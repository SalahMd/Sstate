import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/onboardingcontroller.dart';
import 'package:sestate/core/constants/buttons.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/constants/textstyles.dart';
import 'package:sestate/core/functions/dimenesions.dart';
import 'package:sestate/data/statics/static.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onbording extends GetView<onboardingcontrollerimp> {
  @override
  Widget build(BuildContext context) {
    Get.put(onboardingcontrollerimp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (val) {
                  controller.onPageChanged(val);
                },
                itemCount: Onbordingmodel.length,
                itemBuilder: (context, int i) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                                width: Dimensions.screenwidth(context),
                                height: 500.h,
                                margin: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    Onbordingmodel[i].animation,
                                    fit: BoxFit.fill,
                                  ),
                                ))
                            .animate()
                            .fade(
                              duration: 1200.ms,
                            )
                            .slideY(begin: 0.1, curve: Curves.easeInOut),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            Onbordingmodel[i].title!,
                            style: Theme.of(context).textTheme.headline1,
                            //textAlign: TextAlign.center,
                          ),
                        )
                            .animate()
                            .animate()
                            .fade(duration: 800.ms, delay: 400.ms)
                            .slideY(begin: 0.5),
                        Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(left: 15, top: 10),
                                // alignment: Alignment.center,
                                child: Text(
                                  Onbordingmodel[i].body!,
                                  //textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ))
                            .animate()
                            .animate()
                            .fade(duration: 800.ms, delay: 400.ms)
                            .slideY(begin: 0.5),
                      ],
                    )),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  GetBuilder<onboardingcontrollerimp>(
                    builder: (controller) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            Onbordingmodel.length,
                            (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 700),
                                  width:
                                      controller.currentPage == index ? 20 : 8,
                                  height: 8,
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(20)),
                                )),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  ElevatedButton(
                    onPressed: () {
                      controller.next();
                    },
                    style: AppButtons.elevatedButtonStyle,
                    child: Text("continuebutton".tr,
                        style: TextStyles.textbuttonstyle),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
