// ignore_for_file: sort_child_properties_last, prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/utilis/app_images.dart';
import 'package:weather_app/widgets/common_widget/custom_dialog_box_widget.dart';

class HadisContainerWidget extends StatelessWidget {
  final String ar;
  final String banglaText;
  final String hadithNumber;
  final VoidCallback moreBtn;
  final String narrator;
  const HadisContainerWidget(
      {Key? key,
      required this.ar,
      required this.narrator,
      required this.banglaText,
      required this.moreBtn,
      required this.hadithNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImages.appImage,
                      width: 90,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "সহিহ বুখারী",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 13.h,
                            fontFamily: "bangla",
                          ),
                        ),
                        Text(
                          hadithNumber,
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.h,
                            fontFamily: "bangla",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        DialogUtils.showDialog();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(4.0.h),
                          child: Text(
                            "সহিহ বুখারী",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.h,
                              fontFamily: "bangla",
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.h),
                    GestureDetector(
                      onTap: moreBtn,
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Text(
              ar,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 23.h,
                fontFamily: "arbic",
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              narrator,
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 16.h,
                fontFamily: "bangla",
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              banglaText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.h,
                fontFamily: "bangla",
              ),
            )
          ],
        ),
        width: Get.width,
        decoration: BoxDecoration(
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.circular(12),
        ));
  }
}
