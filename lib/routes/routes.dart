import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/Screens/Home/start_page.dart';
import 'package:food_web/Screens/Sign/login.dart';
import 'package:food_web/Screens/Sign/signin_page.dart';
import 'package:food_web/ecommerce/widget_tree.dart';

final rutas = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomeScreen(),
  'home': (BuildContext context) => HomeScreen(),
  'login': (BuildContext context) => SignUpScreen(),
  'signin': (BuildContext context) => SignInScreen(),
  'start': (BuildContext context) => StartPage(),
  'compra': (BuildContext context) => WidgetTree(),
};

Map<String, WidgetBuilder> getAppRoutes() {
  return rutas;
}
