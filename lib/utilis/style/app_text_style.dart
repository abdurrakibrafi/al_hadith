import 'package:flutter/material.dart';
import 'package:weather_app/utilis/app_colors.dart';

import 'dimens.dart';

class AppTextStyle {
  const AppTextStyle._();

  static final TextStyle semiBoldStyle = _textStyle.copyWith(
      fontSize: Dimens.fontSize16,
      fontWeight: FontWeight.w400,
      fontFamily: "bangala",
      color: AppColors.mainColor);

  static final TextStyle boldStyle = _textStyle.copyWith(
      fontSize: Dimens.fontSize10,
      color: AppColors.mainColor,
      fontFamily: "bangala");

  static final TextStyle smallText = _textStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w200,
      fontFamily: "bangala",
      color: Colors.black.withOpacity(0.7));

  static final TextStyle regularStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle buttonTextStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle _textStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimens.fontSize14,
  );
}
