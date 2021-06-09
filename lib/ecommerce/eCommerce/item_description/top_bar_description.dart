import 'package:flutter/material.dart';

import '../../k_padding.dart';
import '../../responsive.dart';

class TopBarDescription extends StatelessWidget {
  //The Top Bar over the description page
  const TopBarDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
          /*  if (ResponsiveLayout.isIphone(context)) BackButton(),
          if (ResponsiveLayout.isMacbook(context))
            IconButton(
              icon: Icon(
                Icons.print_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ), */
          Spacer(),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).accentColor)),
              child: Text(
                "Agregar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: kPadding),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                      Theme.of(context).primaryColor)),
              child: Text(
                "Comprar ahora",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: kPadding),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
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
                      Theme.of(context).primaryColor)),
              child: Text(
                "Alquilar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
