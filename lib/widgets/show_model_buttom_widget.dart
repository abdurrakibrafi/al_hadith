// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/widgets/bottom_sheet_title_widget.dart';

void showCustomModalBottomSheet(BuildContext context, VoidCallback copyBangla,
    VoidCallback copyArbi, VoidCallback screenShot) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 350.h,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'অন্যান্য অপশন',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.h,
                        fontFamily: "bangla"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.close),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              BottomSheetTitleWidget(
                icon: Icons.sticky_note_2_rounded,
                title: 'কালেকশন এড করুন',
                onTap: () {},
              ),
              SizedBox(height: 12.h),
              BottomSheetTitleWidget(
                icon: Icons.copy,
                title: 'বাংলা কপি',
                onTap: () {
                  copyBangla();
                },
              ),
              SizedBox(height: 12.h),
              BottomSheetTitleWidget(
                icon: Icons.copy,
                title: 'আরবি কপি',
                onTap: () {
                  copyArbi();
                },
              ),
              SizedBox(height: 12.h),
              BottomSheetTitleWidget(
                icon: Icons.copy,
                title: 'সম্পূর্ণ হাদিস কপি',
                onTap: () {
                  copyBangla();
                },
              ),
              SizedBox(height: 12.h),
              BottomSheetTitleWidget(
                icon: Icons.image,
                title: 'স্কিনশট শেয়ার',
                onTap: () {
                  screenShot();
                },
              ),
              SizedBox(height: 12.h),
              BottomSheetTitleWidget(
                icon: Icons.share,
                title: 'টেক্সট শেয়ার',
                onTap: () {},
              ),
              SizedBox(height: 12.h),
              BottomSheetTitleWidget(
                icon: Icons.info_outline,
                title: 'রিপোর্ট',
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    },
  );
}
