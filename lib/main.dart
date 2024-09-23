import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer/routes/routes.dart';
import 'package:musicplayer/routes/routes_name.dart';
import 'package:musicplayer/shared/theme/themeData/theme_data.dart';
import 'controller/themeController/themeController.dart';

void main() {
  final ThemeController themeController = Get.put(ThemeController());
  themeController.setInitialTheme();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (controller) {
        return MaterialApp(
          title: 'Music Player',
          debugShowCheckedModeBanner: false,
          theme: controller.currentTheme,
          darkTheme: darkMode,
          initialRoute: RoutesName.homePage,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}
