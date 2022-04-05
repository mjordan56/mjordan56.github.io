//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/src/ui/components/headers/welcome_header.dart';
import 'package:shiny_object_affliction/widgets/event_details/event_details.dart';
import 'package:shiny_object_affliction/src/ui/components/footer.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const WelcomeHeader(),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1250),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              EventDetails(),
            ],
          ),
        ),
      ],
    );
  }
}
