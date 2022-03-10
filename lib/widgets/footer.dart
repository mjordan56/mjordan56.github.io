//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  static const TextStyle _style = TextStyle(
    color: Colors.white,
    fontFamily: 'Lato',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.1,
  );

  static const _color = Color(0xff0a0a0a);

  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      constraints: const BoxConstraints(minHeight: 25, maxWidth: 1250),
      padding: const EdgeInsets.symmetric(horizontal: 92, vertical: 24),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Shiny',
                style: _style,
              ),
              Text(
                'Object',
                style: _style,
              ),
              Text(
                'Affliction',
                style: _style,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
