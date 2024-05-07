import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utilis/app_colors.dart';

class BottomSheetTitleWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String title;
  const BottomSheetTitleWidget(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.mainColor,
            size: 32,
          ),
          SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.h,
                fontFamily: "bangla"),
          ),
        ],
      ),
    );
  }
}
