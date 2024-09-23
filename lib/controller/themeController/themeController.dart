import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/shared/theme/themeData/theme_data.dart'; // Adjust the import path as necessary

class ThemeController extends GetxController {
  // Use RxBool to make it observable
  var isDarkMode = false.obs; // Make it an observable

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value; // Update the observable
    update(); // Notify listeners
  }

  ThemeData get currentTheme => isDarkMode.value ? darkMode : lightMode;

  // You can also set the initial theme here if needed
  void setInitialTheme() {
    isDarkMode.value = Get.isDarkMode; // Use the system's default theme
    update();
  }
}
