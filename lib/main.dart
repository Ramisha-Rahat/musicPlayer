import 'package:flutter/material.dart';
import 'package:musicplayer/routes/routes.dart';
import 'package:musicplayer/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.homePage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}