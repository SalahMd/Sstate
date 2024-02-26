import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/core/constants/colors.dart';
import 'package:sestate/core/localization/changelanguage.dart';
import 'package:sestate/core/localization/translation.dart';
import 'package:sestate/core/middlewere/midlleware.dart';
import 'package:sestate/core/services/services.dart';
import 'package:sestate/data/statics/static.dart';
import 'package:sestate/view/screens/add_place/add_place.dart';
import 'package:sestate/view/screens/auth/login.dart';
import 'package:sestate/view/screens/auth/signup.dart';
import 'package:sestate/view/screens/choose_language.dart';
import 'package:sestate/view/screens/navigation_bar/nav_bar.dart';
import 'package:sestate/view/screens/onboarding.dart';
import 'package:sestate/view/screens/settings.dart';
import 'view/screens/search/search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  //ScreenUtil.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    ChangeLanguage controller = Get.put(ChangeLanguage());
    return ScreenUtilInit(
      designSize: const Size(320, 790),
      child: GetMaterialApp(
        locale: controller.language,
        translations: Translation(),

        //darkTheme: ThemeData(),
        theme: ThemeData(
            //brightness: Brightness.dark,
            textTheme: TextTheme(
          headline1: TextStyle(
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 23.sp,
              fontFamily:
                  controller.language == "en" ? "PlayfairDisplay" : "Cairo"),
          headline2: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 21.sp,
              fontFamily:
                  controller.language == "en" ? "PlayfairDisplay" : "Cairo"),
          bodyText1: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w400,
              fontSize: 17.sp,
              height: 1.5),
          bodyText2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
        )),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
              name: "/",
              page: () => ChooseLanguage(),
              middlewares: [MiddleWare()]),
          GetPage(name: "/Login", page: () => Login()),
          GetPage(name: "/OnBoarding", page: () => onbording()),
          GetPage(name: "/SignUp", page: () => SignUp()),
          GetPage(name: "/Search", page: () => Search()),
          GetPage(name: "/HomePage", page: () => ButtomBar()),
          GetPage(name: "/AddPlace", page: () => AddPlace()),
          GetPage(name: "/Settings", page: () => Settings()),
        ],
      ),
    );
  }
}
