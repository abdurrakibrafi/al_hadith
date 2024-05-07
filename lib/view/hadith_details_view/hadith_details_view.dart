// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/database_helper_controller.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/widgets/bottom_fuction_widget.dart';
import 'package:weather_app/widgets/common_widget/custom_app_bar_widget.dart';
import 'package:weather_app/widgets/drawer_widget/custom_end_drawer_widget.dart';
import 'package:weather_app/widgets/drawer_widget/drawer_content_part_two_widget.dart';
import 'package:weather_app/widgets/drawer_widget/drawer_content_part_widget.dart';
import 'package:weather_app/widgets/drawer_widget/drawer_content_three_part_widget.dart';
import 'package:weather_app/widgets/hadis_container_widget.dart';
import 'package:weather_app/widgets/odday_container_widget.dart';
import 'package:weather_app/widgets/show_model_buttom_widget.dart';

class HadithDetailsView extends StatelessWidget {
  HadithDetailsView({Key? key}) : super(key: key);
  final DatabaseHelperController controller =
      Get.put(DatabaseHelperController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        key: _scaffoldKey,
        appBar: CustomAppBar(
          title: 'সহিহ বুখারী',
          subTitle: 'ওহীর সূচনা অধ্যায়',
          onTap: () {
            _scaffoldKey.currentState?.openEndDrawer();
          },
        ),
        endDrawer: CustomDrawerWidget(),
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15.0.h, 1.h, 15.h, 0),
              child: Obx(() {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.sectionTitles.length,
                    itemBuilder: (context, index) {
                      var arbicText = controller.hadithList![index]['ar'];
                      var narrator = controller.hadithList![index]['narrator'];
                      var banglaText = controller.hadithList![index]['bn'];

                      return Column(
                        children: [
                          SizedBox(height: 10.h),
                          OddayContainerWidget(
                            title: controller.sectionTitles[index]['title'],
                            subTitle: controller.sectionTitles[index]
                                ['preface'],
                            number: controller.sectionTitles[index]['number'],
                          ),
                          SizedBox(height: 10.h),
                          HadisContainerWidget(
                            ar: arbicText ?? "",
                            narrator: "${narrator} থেকে বর্ণি",
                            banglaText: banglaText,
                            moreBtn: () {
                              showCustomModalBottomSheet(context, () {
                                BottomSheetFunction.copyBangla(banglaText);
                              }, () {
                                BottomSheetFunction.arbiCopy(arbicText);
                              }, () {
                                // BottomSheetFunction.screenShot(
                                //     context, HadithDetailsView());
                              });
                            },
                            hadithNumber:
                                'হাদিস ${String.fromCharCode(0x09E7 + index)}',
                          ),
                        ],
                      );
                    },
                  );
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}
