// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/utilis/app_colors.dart';

class OddayContainerWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String number;
  const OddayContainerWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: number,
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.h,
                      fontFamily: "bangla",
                    ),
                  ),
                  title.split(' ').length >= 5
                      ? TextSpan(
                          text: " $title",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.h,
                            fontFamily: "bangla",
                          ),
                        )
                      : TextSpan(),
                ],
              ),
            ),
            if (subTitle.isNotEmpty) SizedBox(height: 5.h),
            if (subTitle.isNotEmpty)
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
            if (subTitle.isNotEmpty) SizedBox(height: 5.h),
            if (subTitle.isNotEmpty)
              Text(
                subTitle,
                style: TextStyle(color: Colors.grey),
              )
          ],
        ),
      ),
    );
  }
}
