//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  static const _imageReference = 'assets/images/shinybender.png';

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: const TextStyle(fontFamily: 'PlayfairDisplay'),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 1250,
          maxHeight: 142,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 92,
          vertical: 14,
        ),
        // color: Colors.grey[200],
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: 4,
              left: 0,
              child: Image.asset(
                _imageReference,
                scale: 1.6,
              ),
            ),
            const Positioned(
              left: 60,
              top: 18,
              child: Text(
                'Shiny Object Affliction',
                style: TextStyle(fontSize: 48, letterSpacing: 2.8),
              ),
            ),
            const Positioned(
              left: 285,
              top: 72,
              child: Text(
                'A Flutter and Dart Sandbox',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
