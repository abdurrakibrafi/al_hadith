import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_app/utilis/app_colors.dart';

class ToastUtils {
  static void showToast({
    required String msg,
    Toast length = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.BOTTOM,
    int timeInSecForIosWeb = 1,
    Color? backgroundColor,
    Color? textColor,
    double fontSize = 16.0,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: length,
      gravity: gravity,
      timeInSecForIosWeb: timeInSecForIosWeb,
      backgroundColor: backgroundColor ?? AppColors.mainColor.withOpacity(0.9),
      textColor: textColor ?? Colors.white,
      fontSize: fontSize,
    );
  }
}
