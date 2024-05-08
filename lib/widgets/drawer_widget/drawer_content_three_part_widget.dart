// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, use_super_parameters

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/utilis/app_string.dart';

class DrawerThreeContentPart extends StatefulWidget {
  DrawerThreeContentPart({Key? key}) : super(key: key);

  @override
  State<DrawerThreeContentPart> createState() => _DrawerThreeContentPartState();
}

class _DrawerThreeContentPartState extends State<DrawerThreeContentPart> {
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
                    Icons.draw,
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    AppString.viewSetting,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.nightMode,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    AdvancedSwitch(
                      activeColor: AppColors.mainColor.withOpacity(0.4),
                      inactiveColor: Colors.grey,
                      borderRadius: BorderRadius.all(const Radius.circular(15)),
                      width: 40.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: CustomSlidingSegmentedControl<int>(
                  initialValue: 2,
                  children: {
                    1: Row(
                      children: [
                        Text(
                          AppString.listView,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        )
                      ],
                    ),
                    2: Row(
                      children: [
                        Text(
                          AppString.slideView,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.grid_view_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  },
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      ),
                    ],
                  ),
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInToLinear,
                  onValueChanged: (v) {
                    print(v);
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
