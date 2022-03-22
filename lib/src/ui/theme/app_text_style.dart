//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  static final TextStyle styleTest = GoogleFonts.hurricane(
    textStyle: const TextStyle(
      inherit: false,
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w400,
      height: 1.1,
    ),
  );

  static const TextTheme main = TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    // this.headlineLarge,
    // TextStyle? headlineMedium,
    // TextStyle? headlineSmall,
    // TextStyle? titleLarge,
    // TextStyle? titleMedium,
    // TextStyle? titleSmall,
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    // TextStyle? labelLarge,
    // this.labelMedium,
    // TextStyle? labelSmall,
  );

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

  static final MarkdownStyleSheet main = MarkdownStyleSheet(
    blockSpacing: 16,
    h1: const TextStyle(
      fontFamily: 'Barlow',
      fontSize: 28,
      height: 2,
    ),
    h2: const TextStyle(
      fontSize: 21,
      height: 2.5,
    ),
    h3: const TextStyle(
      fontSize: 18,
      height: 1.5,
      fontWeight: FontWeight.w600,
    ),
    h4: const TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w600,
    ),
    p: const TextStyle(
      fontSize: 15.5,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      height: 1.6,
    ),
  );
}
