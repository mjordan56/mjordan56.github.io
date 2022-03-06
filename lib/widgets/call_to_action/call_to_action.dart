//
// Copyright (c) 2022 Quiverware LLC
//
import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:shiny_object_affliction/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
