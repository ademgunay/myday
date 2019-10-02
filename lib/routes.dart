import 'package:flutter/material.dart';

import 'screens/detail.dart';
import 'screens/home.dart';
import 'screens/oxo.dart';

class Routes {
  Routes._();

  static const String home = "/home";
  static const String detail = "/feed";
  static const String oxo = "/oxo";

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
    detail: (BuildContext context) => PickColorScreen(),
    oxo: (BuildContext context) => OxoScreen(),
  };
}
