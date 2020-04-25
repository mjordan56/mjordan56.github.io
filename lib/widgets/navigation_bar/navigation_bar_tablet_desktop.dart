import 'package:flutter/material.dart';
import 'package:shiny_object/routing/router.dart';
import 'package:shiny_object/widgets/navigation_bar/navbar_item.dart';
import 'package:shiny_object/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff393c40),
      padding: const EdgeInsets.only(top: 0, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          // NavBarLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
