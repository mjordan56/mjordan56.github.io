// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/widgets/event_details/event_details.dart';
import 'package:shiny_object_affliction/widgets/footer.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  static const _headerColor = Color(0xff0a0a0a);

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
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 130,
                  width: 65,
                  child: Container(
                    // decoration: _imageDecoration,
                    child: Image.asset(_defaultEventImage),
                  ),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _header(),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1250),
            child: Container(
              alignment: Alignment.bottomCenter,
              color: Theme.of(context)
                  .backgroundColor, // makes the content area scrollable
              child: EventDetails(),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
