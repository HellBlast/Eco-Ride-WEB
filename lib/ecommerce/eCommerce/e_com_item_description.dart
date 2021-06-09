import 'package:flutter/material.dart';

import '../k_padding.dart';
import 'item_description/top_bar_description.dart';

class ECommerceItemDescription extends StatelessWidget {
  const ECommerceItemDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              TopBarDescription(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                      SizedBox(width: kPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "Eco Ride  ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          children: [
                                            TextSpan(
                                                text: "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    .copyWith(
                                                        color: Colors.black
                                                            .withOpacity(0.5))),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Bicicleta MTB GW PIRANHA",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: kPadding / 2),
                                Text("\$ 190.000",
                                    style: TextStyle(fontSize: 15)),
                              ],
                            ),
                            SizedBox(height: kPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 840
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: kPadding * 3,
                                        ),
                                        if (constraints.maxWidth > 300)
                                          Container(
                                            width: constraints.maxWidth > 840
                                                ? 600
                                                : constraints.maxWidth - 200,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/images/gw.jpg",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: kPadding / 2),
                                    Text(
                                      "Marco GW Piranha en aluminio rin 29. Peso 1870 gr. Suspensión GW 1.3 con bloqueo en aluminio y botellas magnesio con graducación al hombro rin 29 y recorrido de 100 mm. Grupo 100% Shimano Altus Hidráulico 27 v",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: kPadding),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text("Reviews (33) ",
                                            style: TextStyle(fontSize: 15)),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_outline_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
