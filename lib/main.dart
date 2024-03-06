import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sestate/controller/dark_mode.dart';
import 'package:sestate/core/localization/change_language.dart';
import 'package:sestate/core/localization/translation.dart';
import 'package:sestate/core/middlewere/midlleware.dart';
import 'package:sestate/core/services/services.dart';
import 'package:sestate/core/theme/app_theme.dart';
import 'package:sestate/view/screens/add_place/add_place.dart';
import 'package:sestate/view/screens/auth/login.dart';
import 'package:sestate/view/screens/auth/signup.dart';
import 'package:sestate/view/screens/choose_language.dart';
import 'package:sestate/view/screens/navigation_bar/nav_bar.dart';
import 'package:sestate/view/screens/on_boarding.dart';
import 'package:sestate/view/screens/settings.dart';
import 'view/screens/search/search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    ChangeLanguage controller = Get.put(ChangeLanguage());
    DarkModeImpl themeController = Get.put(DarkModeImpl());
    return ScreenUtilInit(
      designSize: const Size(320, 790),
      child: GetMaterialApp(
        locale: controller.language,
        translations: Translation(),
        themeMode: themeController.themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
              name: "/",
              page: () => ChooseLanguage(),
              middlewares: [MiddleWare()]),
          GetPage(name: "/Login", page: () => const Login()),
          GetPage(name: "/ChooseLanguage", page: () => ChooseLanguage()),
          GetPage(name: "/OnBoarding", page: () => OnBording()),
          GetPage(name: "/SignUp", page: () => const SignUp()),
          GetPage(name: "/Search", page: () => const Search()),
          GetPage(name: "/HomePage", page: () => ButtomBar()),
          GetPage(name: "/AddPlace", page: () => const AddPlace()),
          GetPage(name: "/Settings", page: () => const Settings()),
        ],
      ),
    );
  }
}
