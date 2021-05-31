import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/constant.dart';
import 'package:food_web/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Ride',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: getAppRoutes(),
    );
  }
}
