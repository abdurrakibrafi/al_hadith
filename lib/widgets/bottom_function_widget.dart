import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

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

  static void sendEmail(
      String emailAddress, String subject, String body) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );
    await launchUrl(launchUri);
  }

  static void shareText(String text, String textTwo) {
    Share.share(text, subject: textTwo);
  }
}
