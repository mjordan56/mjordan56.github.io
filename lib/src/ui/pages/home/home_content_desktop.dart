//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/widgets/event_details/event_details.dart';
import 'package:shiny_object_affliction/src/ui/components/footer.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  // static const _headerColor = Color(0xff0a0a0a);
  static const _headerColor = Color.fromARGB(255, 46, 45, 45);

  static const _defaultEventImage = 'assets/images/shinybender.png';

  static const TextStyle _headerStyle1 = TextStyle(
    color: Colors.white,
    fontFamily: 'PlayfairDisplay',
    fontSize: 32,
    fontStyle: FontStyle.italic,
    // fontWeight: FontWeight.w500,
    // letterSpacing: 1,
    // height: 1
  );

  static const TextStyle _headerStyle2 = TextStyle(
    color: Colors.white,
    fontFamily: 'Lato',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  Widget _header() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1250),
      padding: const EdgeInsets.fromLTRB(92, 14, 92, 14),
      color: _headerColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 100, //130,
                width: 65,
                // child: Container(
                // decoration: _imageDecoration,
                child: Image.asset(_defaultEventImage),
              ),
            ),
            // ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const <Widget>[
              Text(
                'Shiny Object Affliction',
                style: _headerStyle1,
              ),
              Text(
                'Musings on cool tech',
                style: _headerStyle2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return CustomScrollView(
    //   slivers: <Widget>[
    //     SliverAppBar(
    //       backgroundColor: Colors.amber,
    //     ),
    //     // SliverList(
    //     //   delegate:
    //     //       SliverChildBuilderDelegate((BuildContext context, int index) {
    //     //     return const Placeholder();
    //     //   }, childCount: 5),
    //     // ),
    //   ],
    // );
    // return Placeholder();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _header(),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            EventDetails(),
            // const Footer(),
          ],
        ),
        //       // Container(
        //       //   constraints: BoxConstraints(maxWidth: 1250),
        //       //   alignment: Alignment.bottomCenter,
        //       //   color: Theme.of(context)
        //       //       .backgroundColor, // makes the content area scrollable
        //       //   child: Expanded(
        //       //     child: Column(
        //       //       mainAxisSize: MainAxisSize.max,
        //       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       //       children: [
        //       //         const EventDetails(),
        //       //         const Footer(),
        //       //       ],
        //       //     ),
        //       //   ),
        //       // ),
      ],
    );
  }
}
