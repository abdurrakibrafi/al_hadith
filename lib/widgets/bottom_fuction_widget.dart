import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:weather_app/utilis/toast_message.dart';

class BottomSheetFunction {
  // static final ScreenshotController screenshotController =
  //     ScreenshotController();

  static void copyBangla(String banglaText) {
    Clipboard.setData(ClipboardData(text: banglaText));
    Get.back();
    ToastUtils.showToast(msg: "বাংলা টেক্সট কপি হয়েছে");
  }

  static void arbiCopy(String arbiText) {
    Clipboard.setData(ClipboardData(text: arbiText));
    Get.back();
    ToastUtils.showToast(msg: "আরবি টেক্সট কপি হয়েছে");
  }

  // static void screenShot(BuildContext context, Widget widget) async {
  //   final image = await screenshotController.captureFromWidget(
  //     widget,
  //     pixelRatio: 2,
  //   );
  //   Share.shareXFiles([XFile.fromData(image, mimeType: "png")]);
  // }
}
