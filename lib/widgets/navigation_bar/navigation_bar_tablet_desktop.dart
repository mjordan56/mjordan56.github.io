import 'package:flutter/material.dart';
import 'package:shiny_object/routing/router.dart';
import 'package:shiny_object/widgets/navigation_bar/navbar_item.dart';
import 'package:shiny_object/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff0a0909),
      padding: const EdgeInsets.only(left: 92, top: 0, right: 92, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          // NavBarLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              NavBarItem('Home', Routes.home),
              NavBarItem('About', Routes.about),
            ],
          )
        ],
      ),
    );
  }
}
