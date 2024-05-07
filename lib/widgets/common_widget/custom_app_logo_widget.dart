import 'package:flutter/material.dart';
import 'package:weather_app/utilis/app_images.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.logo,
      width: width ?? 120,
      height: height,
    );
  }
}
