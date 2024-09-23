import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/themeController/themeController.dart';
import '../shared/widget/toggleSwitch.dart'; // Adjust the import path

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ThemeController themeController = Get.put(ThemeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

          body:Center(
              child: ToggleLine(label: 'Theme',),
          ),
    );
  }
}
