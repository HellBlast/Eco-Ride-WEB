import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/app_bar.dart';
import 'package:food_web/Screens/Home/Components/body.dart';

import '../../constant.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: PageView(
        children: [
          Container(
            height: size.height,
            // it will take full width
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                Spacer(),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            "Bienvenido a Eco Ride".toUpperCase(),
                            style:
                                Theme.of(context).textTheme.headline1.copyWith(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labor",
                            style: TextStyle(
                              fontSize: 21,
                              color: kTextcolor.withOpacity(1),
                            ),
                          ),
                          Text(
                            'Aute duis est dolore irure aliqua culpa eu. Ad duis proident pariatur mollit quis sunt nostrud consectetur ex anim quis elit ad dolore. Reprehenderit qui mollit dolore adipisicing sint officia exercitation deserunt consectetur esse exercitation. Irure nisi nostrud ipsum laboris labore amet ea sunt irure. Sunt et amet cillum dolor eiusmod nostrud dolore incididunt culpa nulla ipsum culpa ea.',
                            style: TextStyle(
                              fontSize: 20,
                              color: kTextcolor.withOpacity(1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                //Body(),
                Spacer(
                  flex: 2,
                ),
                // it will cover 2/3 of free spaces
              ],
            ),
          ),
        ],
      ),
    );
  }
}
