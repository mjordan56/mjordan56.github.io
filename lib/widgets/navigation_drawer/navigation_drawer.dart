import 'package:flutter/material.dart';
import 'package:shiny_object/routing/router.dart';
import 'package:shiny_object/widgets/navigation_drawer/drawer_item.dart';
import 'package:shiny_object/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Posts', Icons.comment, Routes.posts),
          DrawerItem('About', Icons.help, Routes.about),
        ],
      ),
    );
  }
}
