import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shiny_object/views/about/about_content_desktop.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.purple[400],
    //   child: Center(
    //     child: Text('About View'),
    //   ),
    // );
    return ScreenTypeLayout(
      desktop: AboutContentDesktop(),
      mobile: AboutContentMobile(),
      tablet: AboutContentTablet(),
    );
  }
}
class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        color: Colors.lime[400],
        child: Center(
          child: Text('About View Mobile'),
        ),
      ),
    );
  }
}

class AboutContentTablet extends StatelessWidget {
  const AboutContentTablet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lime[400],
      child: Center(
        child: Text('About View Tablet'),
      ),
    );
  }
}
