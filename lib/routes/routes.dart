import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/Screens/Sign/login.dart';

final rutas = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomeScreen(),
  'home': (BuildContext context) => HomeScreen(),
  'login': (BuildContext context) => SignUpScreen(),
};

Map<String, WidgetBuilder> getAppRoutes() {
  return rutas;
}
