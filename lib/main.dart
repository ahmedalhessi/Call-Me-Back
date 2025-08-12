import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/routes/get_pages.dart';
import 'core/routes/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          textDirection: TextDirection.rtl,
          debugShowCheckedModeBanner: false,
          // theme: ThemeManager.light(),
          initialRoute: RoutesManager.onboardingScreen,
          getPages: getPages,
          // unknownRoute: GetPage(
          //   name: RoutesManager.unknownScreen,
          //   page: () => const UnknownScreen(),
          // ),
          // translations: AppTranslations(),
          locale: Locale(Get.deviceLocale?.languageCode ?? 'en'),
          fallbackLocale: const Locale('en'),
        );
      },
    );
  }
}
