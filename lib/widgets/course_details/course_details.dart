import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final crossAxisAlignment = sizingInformation.isDesktop
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center;
      final textAlignment =
          sizingInformation.isDesktop ? TextAlign.left : TextAlign.center;
      final double titleSize = sizingInformation.isMobile ? 24 : 36;
      final double descriptionSize = sizingInformation.isMobile ? 16 : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MEET AND GREET\nSETTING DIRECTION FOR 2020',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: titleSize,
                  height: 0.9),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'This first meeting of 2020 will be a brainstorming session to help set direction for the Meetup events.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
