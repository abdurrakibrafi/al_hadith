import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/utilis/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: AppColors.mainColor,
      title: Padding(
        padding: EdgeInsets.only(top: 12.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "bangla",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.h),
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: Colors.white, fontFamily: "bangla", fontSize: 14.h),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            child: Image.asset(AppImages.menu, width: 25),
            onTap: onTap,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
