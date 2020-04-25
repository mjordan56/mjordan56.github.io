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
    fontFamily: 'Roboto',
    fontSize: 46,
    fontWeight: FontWeight.w500,
    // letterSpacing: 1,
    // height: 1
  );

  static const TextStyle _headerStyle2 = TextStyle(
    color: Colors.white,
    fontFamily: 'Roboto',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  Widget _header() {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 28, 0, 14),
        color: _headerColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 50,
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 216,
                  width: 416,
                  child: Container(
                    // decoration: _imageDecoration,
                    child: Image.asset(_defaultEventImage),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Shiny Object Affliction',
                    style: _headerStyle1,
                  ),
                  Text(
                    'My investigations and musing on cool tech',
                    style: _headerStyle2,
                  ),
                ],
              ),
            ),
          ],
        ),
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
            // height: 400,
            child: EventDetails(),
          ),
          // _header(),
        ],
      ),
    );
  }
}
