// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/utilis/app_string.dart';

class DrawerTwoContentPart extends StatefulWidget {
  DrawerTwoContentPart({Key? key}) : super(key: key);

  @override
  State<DrawerTwoContentPart> createState() => _DrawerTwoContentPartState();
}

class _DrawerTwoContentPartState extends State<DrawerTwoContentPart> {
  final _controller = ValueNotifier<bool>(false);
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.text_fields_rounded,
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    AppString.fontSettings,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  AppString.fontOfArbi,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Slider(
                inactiveColor: AppColors.mainColor.withOpacity(0.2),
                activeColor: AppColors.mainColor,
                label: "Select Age",
                value: age.toDouble(),
                onChanged: (value) {
                  setState(() {
                    age = value.toInt();
                  });
                },
                min: 5,
                max: 100,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  AppString.banglaFontofArbi,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Slider(
                inactiveColor: AppColors.mainColor.withOpacity(0.2),
                activeColor: AppColors.mainColor,
                label: "Select Age",
                value: age.toDouble(),
                onChanged: (value) {
                  setState(() {
                    age = value.toInt();
                  });
                },
                min: 5,
                max: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.arbiFont,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(height: 6),
                    Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.kingFadah,
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded)
                            ],
                          ),
                        )),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
