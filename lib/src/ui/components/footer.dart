//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Container(
      color: themeData.backgroundColor,
      constraints: const BoxConstraints(minHeight: 25, maxWidth: 1250),
      padding: const EdgeInsets.symmetric(horizontal: 92, vertical: 24),
      child: DefaultTextStyle(
        style: themeData.textTheme.titleMedium!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text('Shiny'),
                Text('Object'),
                Text('Affliction'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Quiverware LLC',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Denver, Colorado',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Column(
              children: [
                FlutterLogo(
                  size: 60,
                  style: FlutterLogoStyle.stacked,
                  textColor: themeData.colorScheme.onBackground,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
