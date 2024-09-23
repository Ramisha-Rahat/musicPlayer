import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer/shared/theme/appColors/appColors.dart';

import '../../controller/themeController/themeController.dart';

class ToggleLine extends StatelessWidget {
  final String label;

  const ToggleLine({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    // Initialize ThemeController
    final ThemeController themeController = Get.find();

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(label),
          Obx(() => CupertinoSwitch(
            value: themeController.isDarkMode.value, // Access the observable value
            onChanged: (bool value) {
              themeController.toggleTheme();
            },
            activeColor: AppColors.lightWhiteColor,
          )),
        ],
      ),
    );
  }
}
