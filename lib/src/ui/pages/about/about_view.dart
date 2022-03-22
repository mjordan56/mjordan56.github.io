//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../ui.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.purple[400],
    //   child: Center(
    //     child: Text('About View'),
    //   ),
    // );
    return ScreenTypeLayout(
      desktop: const AboutContentDesktop(),
      mobile: const AboutContentMobile(),
      tablet: const AboutContentTablet(),
    );
  }
}

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.lime[400],
        child: const Center(
          child: Text('About View Mobile'),
        ),
      ),
    );
  }
}

class AboutContentTablet extends StatelessWidget {
  const AboutContentTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lime[400],
      child: const Center(
        child: Text('About View Tablet'),
      ),
    );
  }
}
