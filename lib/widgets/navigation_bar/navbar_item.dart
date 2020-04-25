import 'package:flutter/material.dart';
import 'package:shiny_object/locator.dart';
import 'package:shiny_object/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 44.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white , fontSize: 18),
        ),
      ),
    );
  }
}
