//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  TextStyle get bodySmall => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      );
}

class MarkdownStyle {
  MarkdownStyle._();

  static const TextStyle headerStyle1 = TextStyle(
    color: Colors.white,
    fontFamily: 'Lato',
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    // letterSpacing: 1,
    // height: 1
  );

  static const TextStyle headerStyle2 = TextStyle(
    color: Colors.black87,
    fontFamily: 'Lato',
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static final MarkdownStyleSheet main = MarkdownStyleSheet(
    blockSpacing: 21,
    h1: headerStyle1.copyWith(color: Colors.black87),
    h2: headerStyle2,
    h3: headerStyle1.copyWith(
        color: Colors.black87, fontSize: 24, fontWeight: FontWeight.w600),
    h4: headerStyle1.copyWith(
        color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w600),
    p: headerStyle1.copyWith(
      color: Colors.black,
      fontFamily: 'Lato',
      fontSize: 18,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      height: 1.6,
    ),
  );
}
