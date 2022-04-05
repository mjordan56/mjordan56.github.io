//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiny_object_affliction/src/ui/theme/app_text_style.dart';
import 'app_color.dart';

class AppTheme {
  AppTheme._();

  static final fontFamily = GoogleFonts.lato().fontFamily;

  /// App core theme attributes. The core [ThemeData] attributes are
  /// common across all app themes. The core [ThemeData] is generally
  /// not accessed by the app but is used by other theme instances
  /// to specify attributes common to all themes.
  ///
  static final ThemeData coreThemeData = ThemeData(
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    ),
    scaffoldBackgroundColor: AppColor.secondary,
    tabBarTheme: TabBarTheme(
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.secondary,
            width: 3.5,
          ),
        ),
      ),
      labelPadding: const EdgeInsets.all(25),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: AppColor.secondary,
      labelStyle: GoogleFonts.latoTextTheme().button!.copyWith(
            fontSize: 18.5,
            fontWeight: FontWeight.w900,
          ),
      unselectedLabelStyle: GoogleFonts.latoTextTheme().button!.copyWith(
            fontSize: 15.5,
            fontWeight: FontWeight.w400,
          ),
    ),
  );

  /// Light app [ThemeData]. Attributes specific to [ThemeMode.light].
  ///
  static final ThemeData light = ThemeData.light().copyWith(
    backgroundColor: AppColor.lightColorScheme.background,
    // cardTheme: ThemeData.light().cardTheme.copyWith(color: AppColor.primary_20),
    colorScheme: AppColor.lightColorScheme,
    dialogTheme: ThemeData.light().dialogTheme.copyWith(
          shape: coreThemeData.dialogTheme.shape,
        ),
    scaffoldBackgroundColor: AppColor.lightColorScheme.background,
    tabBarTheme: ThemeData.light().tabBarTheme.copyWith(
          indicator: coreThemeData.tabBarTheme.indicator,
          indicatorSize: coreThemeData.tabBarTheme.indicatorSize,
          labelColor: coreThemeData.tabBarTheme.labelColor,
          labelStyle: coreThemeData.tabBarTheme.labelStyle,
          unselectedLabelColor: Colors.black54,
          unselectedLabelStyle: coreThemeData.tabBarTheme.unselectedLabelStyle,
        ),
    // textTheme: ThemeData.light().textTheme.apply(fontFamily: fontFamily),
    textTheme: Typography.blackMountainView,
    toggleableActiveColor: AppColor.secondary,
  );

  /// Dark app [ThemeData]. Attributes specific to [ThemeMode.dark].
  ///
  static final ThemeData dark = ThemeData.dark().copyWith(
    // cardTheme: ThemeData.dark().cardTheme.copyWith(color: AppColor.primary_94),
    colorScheme: AppColor.darkColorScheme,
    dialogTheme: ThemeData.dark().dialogTheme.copyWith(
          shape: coreThemeData.dialogTheme.shape,
        ),
    scaffoldBackgroundColor: AppColor.darkColorScheme.background,
    tabBarTheme: ThemeData.dark().tabBarTheme.copyWith(
          indicator: coreThemeData.tabBarTheme.indicator,
          indicatorSize: coreThemeData.tabBarTheme.indicatorSize,
          labelColor: coreThemeData.tabBarTheme.labelColor,
          labelStyle: coreThemeData.tabBarTheme.labelStyle,
          unselectedLabelColor: Colors.white54,
          unselectedLabelStyle: coreThemeData.tabBarTheme.unselectedLabelStyle,
        ),
    // textTheme: ThemeData.dark().textTheme.apply(fontFamily: fontFamily),
    textTheme: textTheme,
    toggleableActiveColor: AppColor.secondary,
  );

  static final TextTheme textTheme = Typography.whiteMountainView.copyWith(
      bodyText2: Typography.whiteCupertino.bodyMedium!.copyWith(fontSize: 16));
  // static final TextTheme textTheme = TextTheme(
  //   bodyMedium: AppTextStyle.bodyMedium,
  // ).apply(displayColor: Colors.amber);
}
