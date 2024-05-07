// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/splash_controller.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/widgets/common_widget/custom_app_logo_widget.dart';

class SplashView extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: AppLogo(width: 250),
      ),
    );
  }
}
