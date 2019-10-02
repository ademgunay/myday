import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'routes.dart';
import 'screens/home.dart';

final ThemeData kDefaultTheme = ThemeData(
    primaryColor: Colors.orangeAccent[100],
    primaryColorBrightness: Brightness.light);

final ThemeData kIOSTheme = ThemeData(
  primaryColor: Colors.redAccent,
  accentColor: Colors.pinkAccent,
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes.routes,
      title: 'Material App',
      home: HomeScreen(),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
    );
  }
}
