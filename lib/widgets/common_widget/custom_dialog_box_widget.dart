// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/utilis/app_images.dart';
import 'package:weather_app/utilis/app_string.dart';
import 'package:weather_app/utilis/style/app_text_style.dart';

class DialogUtils {
  static void showDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.white,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 24,
                ),
                onPressed: () {
                  Get.back();
                },
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage(AppImages.starImage),
                        width: 40,
                      ),
                      Text(AppString.sohiHadis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(AppString.dialogText, style: AppTextStyle.smallText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
