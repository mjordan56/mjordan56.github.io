// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shiny_object/widgets/event_details/event_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  static const _headerColor = Color(0xff0a0a0a);

  static const _meetupLogo = 'assets/images/logos/meetup_logo_script.png';

  static const _defaultEventImage = 'assets/images/shinybender.png';

  static const TextStyle _headerStyle1 = TextStyle(
    color: Colors.white,
    fontFamily: 'PlayfairDisplay',
    fontSize: 48,
    fontStyle: FontStyle.italic,
    // fontWeight: FontWeight.w500,
    // letterSpacing: 1,
    // height: 1
  );

  static const TextStyle _headerStyle2 = TextStyle(
    color: Colors.white,
    fontFamily: 'Lato',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  Widget _header() {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.fromLTRB(92, 28, 92, 14),
        color: _headerColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 200,
                width: 100,
                child: Container(
                  // decoration: _imageDecoration,
                  child: Image.asset(_defaultEventImage),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Shiny Object Affliction',
                  style: _headerStyle1,
                ),
                Text(
                  'Musing on cool tech',
                  style: _headerStyle2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _footer() {
    return Container(
      color: Colors.blue,
      constraints: BoxConstraints(minHeight: 60),
      child: Placeholder(
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _header(),
          Container(
            alignment: Alignment.bottomCenter,
            color: Theme.of(context)
                .backgroundColor, // makes the content area scrollable
            child: EventDetails(),
          ),
          _footer(),
        ],
      ),
    );
  }
}
