import 'dart:async';

import 'package:get/get.dart';
import 'package:weather_app/view/hadith_details_view/hadith_details_view.dart';

class SplashController extends GetxController {
  var opacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(Duration(seconds: 3), (Timer t) {
      if (opacity.value != 1.0) {
        opacity.value += 0.5;
      }
    });

    Future.delayed(const Duration(seconds: 4), () {
      Get.offAll((() => HadithDetailsView()));
    });
  }
}
