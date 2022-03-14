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

  // TEMPORARY - this color matches the previous dark mode background.
  // TODO: mjordan 12-03-2021 determine the correct dark mode background color.
  static const Color darkBackground = Color(0xFF303030);
  static const Color lightBackground = Color(0xffedeff2);

  static const Color primary_100 = Color(0xFF151517);
  static const Color primary_94 = Color(0xFF222224);
  static const Color primary_65 = Color(0xFF666667);
  static const Color primary_45 = Color(0xFF959596);
  static const Color primary_20 = Color(0xFFD0D0D0);
  static const Color primary_10 = Color(0xFFE8E8E9);
  static const Color primary_5 = Color(0xFFF3F3F3);
  static const Color primary_2 = Color(0xFFFBFBFB);
  static const Color accent_100 = Color(0xFF5CC3C3);
  static const Color accent_10 = Color(0xFFEEF8F8);
  static const Color mono_100 = Color(0xFF000000);
  static const Color mono_0 = Color(0xFFFFFFFF);
}
