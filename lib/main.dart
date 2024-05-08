// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/theme_controller.dart';
import 'package:weather_app/view/splash%20_view/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          theme: ThemeData.light().copyWith(
            snackBarTheme: SnackBarThemeData(
              backgroundColor: Colors.white,
            ),
          ),
          themeMode: ThemeMode.system,
          title: 'IRD Foundation Task',
          home: SplashView(),
        );
      },
    );
  }
}
