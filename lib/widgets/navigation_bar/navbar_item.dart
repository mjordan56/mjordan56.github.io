import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/locator.dart';
import 'package:shiny_object_affliction/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem({
    Key? key,
    required this.title,
    required this.navigationPath,
  }) : super(key: key);

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
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
