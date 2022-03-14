import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/views/home/home_content_desktop.dart';
import 'package:shiny_object_affliction/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const HomeContentDesktop(),
      mobile: (BuildContext context) => const HomeContentMobile(),
      tablet: (BuildContext context) => const HomeContentMobile(),
    );
  }
}
