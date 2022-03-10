//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle headline1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle headline4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle headline5 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline6 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle headline7 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodyDefault1 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  TextStyle get bodySmall2 => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      );
}
