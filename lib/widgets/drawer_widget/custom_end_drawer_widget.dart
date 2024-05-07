// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/utilis/app_string.dart';
import 'package:weather_app/widgets/drawer_widget/drawer_content_part_two_widget.dart';
import 'package:weather_app/widgets/drawer_widget/drawer_content_part_widget.dart';
import 'package:weather_app/widgets/drawer_widget/drawer_content_three_part_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      width: Get.width / 1.2,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 70,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    AppString.settings,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),

          /// item one
          DrawerContentPart(),

          /// item two
          DrawerTwoContentPart(),

          /// item three
          DrawerThreeContentPart()
        ],
      ),
    );
  }
}
