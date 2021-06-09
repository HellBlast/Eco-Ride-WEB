import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/Screens/Home/start_page.dart';
import 'package:food_web/Screens/Sign/login.dart';
import 'package:food_web/Screens/Sign/signin_page.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 40,
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "ECO RIDE".toUpperCase(),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          Spacer(),
          MenuItem(
            title: "Inicio",
            press: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          MenuItem(
            title: "Productos",
            press: () {},
          ),
          MenuItem(
            title: "Contacto",
            press: () {},
          ),
          MenuItem(
            title: "inicio de sesion",
            press: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                  (route) => false);
            },
          ),
          DefaultButton(
            text: "Empezar",
            press: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
