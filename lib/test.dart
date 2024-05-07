import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/database_helper_controller.dart';

class Test extends StatelessWidget {
  final DatabaseHelperController controller =
      Get.put(DatabaseHelperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite Example'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.sectionTitles.length,
            itemBuilder: (context, index) {
              var title = controller.sectionTitles[index]['title'];
              return ListTile(
                title: Text(title),
              );
            },
          );
        }
      }),
    );
  }
}
