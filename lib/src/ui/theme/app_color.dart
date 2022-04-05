//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  /// the primary color of the application that effects things such as the [AppBar]
  static const Color primary = Color(0xff1e88e5);

  /// the accent color of the application that effects things such as the [FloatingActionButton]
  // static const Color secondary = Colors.purple;
  static const Color secondary = Color(0xff1e88e5);

  static const seed = Color(0xFF6750A4);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 241, 241, 241),
    onPrimary: Color(0xFF121212),
    primaryContainer: Color(0xFFFFD8E3),
    onPrimaryContainer: Color(0xFF3E001C),
    secondary: Color(0xFF0060AB),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD2E4FF),
    onSecondaryContainer: Color(0xFF001C39),
    tertiary: Color(0xFF6E5E00),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFE32E),
    onTertiaryContainer: Color(0xFF211B00),
    error: Color(0xFFB3261E),
    errorContainer: Color(0xFFF9DEDC),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410E0B),
    background: Color(0xFFFFFBFE),
    onBackground: Color(0xFF1C1B1F),
    surface: Color(0xFFFFFBFE),
    onSurface: Color(0xFF1C1B1F),
    surfaceVariant: Color(0xFFE7E0EC),
    onSurfaceVariant: Color(0xFF49454F),
    outline: Color(0xFF79747E),
    onInverseSurface: Color(0xFFF4EFF4),
    inverseSurface: Color(0xFF313033),
    inversePrimary: Color(0xFFFFB1CA),
    shadow: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF121212),
    onPrimary: Color.fromARGB(255, 241, 241, 241),
    primaryContainer: Color(0xFF7B2849),
    onPrimaryContainer: Color(0xFFFFD8E3),
    secondary: Color(0xFF9FC9FF),
    onSecondary: Color(0xFF00315C),
    secondaryContainer: Color(0xFF004883),
    onSecondaryContainer: Color(0xFFD2E4FF),
    tertiary: Color(0xFFE2C600),
    onTertiary: Color(0xFF393000),
    tertiaryContainer: Color(0xFF524600),
    onTertiaryContainer: Color(0xFFFFE32E),
    error: Color(0xFFF2B8B5),
    errorContainer: Color(0xFF8C1D18),
    onError: Color(0xFF601410),
    onErrorContainer: Color(0xFFF9DEDC),
    background: Color(0xFF1C1B1F),
    onBackground: Color(0xFFE6E1E5),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE6E1E5),
    surfaceVariant: Color(0xFF49454F),
    onSurfaceVariant: Color(0xFFCAC4D0),
    outline: Color(0xFF938F99),
    onInverseSurface: Color(0xFF1C1B1F),
    inverseSurface: Color(0xFFE6E1E5),
    inversePrimary: Color(0xFF994061),
    shadow: Color(0xFF000000),
  );
}
