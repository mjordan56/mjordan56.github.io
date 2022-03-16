//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../ui.dart';

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
