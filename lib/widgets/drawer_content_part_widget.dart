// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utilis/app_colors.dart';

class DrawerContentPart extends StatelessWidget {
  DrawerContentPart({Key? key}) : super(key: key);
  final _controller = ValueNotifier<bool>(false);

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
                    Icons.sticky_note_2_outlined,
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Content Settings",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Arbi",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    AdvancedSwitch(
                      controller: _controller,
                      activeColor: AppColors.mainColor.withOpacity(0.4),
                      inactiveColor: Colors.grey,
                      borderRadius: BorderRadius.all(const Radius.circular(15)),
                      width: 40.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Arbi",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    AdvancedSwitch(
                      controller: _controller,
                      activeColor: AppColors.mainColor.withOpacity(0.4),
                      inactiveColor: Colors.grey,
                      borderRadius: BorderRadius.all(const Radius.circular(15)),
                      width: 40.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
