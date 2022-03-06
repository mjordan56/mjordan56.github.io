import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/widgets/call_to_action/call_to_action.dart';
import 'package:shiny_object_affliction/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        CourseDetails(),
        SizedBox(height: 100),
        CallToAction(title: 'Download Presentation'),
      ],
    );
  }
}
