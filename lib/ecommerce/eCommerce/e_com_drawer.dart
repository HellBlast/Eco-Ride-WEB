import 'package:flutter/material.dart';

import '../k_padding.dart';
import '../responsive.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'drawer/drawer_items.dart';

class ECommerceDrawer extends StatelessWidget {
  const ECommerceDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 150,
                    ),
                  ),
                  Spacer(),
                  //if (!ResponsiveLayout.isMacbook(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Iniciar Sesion",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'signin');
                  },
                ),
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Registrarse",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                ),
              ),
              SizedBox(height: kPadding * 2),
              DrawerItems(
                onPressed: () {},
                title: "Tu cuenta",
                icon: Icons.person_outline_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Compras",
                icon: Icons.history,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Productos",
                icon: Icons.shopping_bag_outlined,
                selected: true,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Seguridad",
                icon: Icons.lock_outline_rounded,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Tus Pagos",
                icon: Icons.payment,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Contacto",
                icon: Icons.contact_mail_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Notificaciones",
                icon: Icons.notifications_active_outlined,
              ),
              SizedBox(height: kPadding * 2),
            ],
          ),
        ),
      ),
    );
  }
}
