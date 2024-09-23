import 'package:flutter/material.dart';
import 'package:musicplayer/routes/routes_name.dart';
import '../view/homePage.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RoutesName.homePage:
        return MaterialPageRoute(builder: (BuildContext context) => const HomePage());


      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}