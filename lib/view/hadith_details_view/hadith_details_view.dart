// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/database_helper_controller.dart';
import 'package:weather_app/utilis/app_colors.dart';
import 'package:weather_app/widgets/bottom_function_widget.dart';
import 'package:weather_app/widgets/common_widget/custom_app_bar_widget.dart';
import 'package:weather_app/widgets/drawer_widget/custom_end_drawer_widget.dart';
import 'package:weather_app/widgets/hadis_container_widget.dart';
import 'package:weather_app/widgets/odday_container_widget.dart';
import 'package:weather_app/widgets/show_model_buttom_widget.dart';

class HadithDetailsView extends StatelessWidget {
  HadithDetailsView({Key? key}) : super(key: key);

  final DatabaseHelperController controller =
      Get.put(DatabaseHelperController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.mainColor,
      key: _scaffoldKey,
      endDrawer: CustomDrawerWidget(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            CustomAppBar(
              title: 'সহিহ বুখারী',
              subTitle: 'ওহীর সূচনা অধ্যায়',
              onTap: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          ];
        },
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
              padding: EdgeInsets.fromLTRB(15.0, 1.0, 15.0, 0),
              child: Obx(() {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _calculateMaxItemCount(),
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        var sectionTitleIndex = index ~/ 2;
                        if (sectionTitleIndex <
                            controller.sectionTitles.length) {
                          var sectionTitle =
                              controller.sectionTitles[sectionTitleIndex];
                          return Column(
                            children: [
                              SizedBox(height: 10),
                              OddayContainerWidget(
                                title: sectionTitle['title'],
                                subTitle: sectionTitle['preface'],
                                number: sectionTitle['number'],
                              ),
                            ],
                          );
                        } else {
                          return SizedBox();
                        }
                      } else {
                        var hadithIndex = (index - 1) ~/ 2;
                        if (hadithIndex < controller.hadithList!.length) {
                          var arbiText =
                              controller.hadithList![hadithIndex]['ar'];
                          var banglaText =
                              controller.hadithList![hadithIndex]['bn'];

                          return Column(
                            children: [
                              SizedBox(height: 10),
                              HadisContainerWidget(
                                ar: arbiText ?? "",
                                narrator:
                                    "${controller.hadithList![hadithIndex]['narrator']} থেকে বর্ণিত",
                                banglaText: banglaText,
                                moreBtn: () {
                                  showCustomModalBottomSheet(
                                    context,
                                    () {
                                      BottomSheetFunction.copyBangla(
                                          banglaText);
                                    },
                                    () {
                                      BottomSheetFunction.arbiCopy(arbiText);
                                    },
                                    () {
                                      BottomSheetFunction.sendEmail(
                                        'recipient@example.com',
                                        'Subject of the Email',
                                        'Body of the Email',
                                      );
                                    },
                                    () {
                                      BottomSheetFunction.shareText(
                                          arbiText, banglaText);
                                    },
                                  );
                                },
                                hadithNumber:
                                    'হাদিস ${String.fromCharCode(0x09E7 + hadithIndex)}',
                              ),
                            ],
                          );
                        } else {
                          return SizedBox();
                        }
                      }
                    },
                  );
                }
              }),
            ),
          ),
        ),
      ),
    ));
  }

  int _calculateMaxItemCount() {
    int sectionTitlesCount = controller.sectionTitles.length;
    int hadithListCount = controller.hadithList!.length;
    return sectionTitlesCount + hadithListCount;
  }
}
