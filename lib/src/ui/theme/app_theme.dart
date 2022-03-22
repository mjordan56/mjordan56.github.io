//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiny_object_affliction/src/ui/theme/app_text_style.dart';
import 'app_color.dart';

// TODO: FIXME integrate my old color scheme into the theme data
final myThemeData = ThemeData(
  brightness: Brightness.light,
  backgroundColor: const Color(0xff222222),
  scaffoldBackgroundColor: Colors.black,
  canvasColor: Colors.white,
);

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
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white60),
    backgroundColor: AppColor.lightBackground,
    cardTheme: ThemeData.light().cardTheme.copyWith(color: AppColor.primary_20),
    colorScheme: lightColorScheme,
    // colorScheme: ThemeData.light().colorScheme.copyWith(
    //       background: AppColor.lightBackground,
    //       secondary: AppColor.secondary,
    //     ),
    dialogTheme: ThemeData.light().dialogTheme.copyWith(
          shape: coreThemeData.dialogTheme.shape,
        ),
    scaffoldBackgroundColor: coreThemeData.scaffoldBackgroundColor,
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
    appBarTheme: const AppBarTheme(backgroundColor: AppColor.darkBackground),
    cardTheme: ThemeData.dark().cardTheme.copyWith(color: AppColor.primary_94),
    colorScheme: darkColorScheme,
    // colorScheme: ThemeData.dark().colorScheme.copyWith(
    //       background: AppColor.darkBackground,
    //       secondary: AppColor.secondary,
    //     ),
    dialogTheme: ThemeData.dark().dialogTheme.copyWith(
          shape: coreThemeData.dialogTheme.shape,
        ),
    scaffoldBackgroundColor: coreThemeData.scaffoldBackgroundColor,
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

abstract class OxosIconTheme {
  static const double defaultIconSize = 28;
}

class ThemeModeColors {
  final Color lightModeColor;
  final Color darkModeColor;

  const ThemeModeColors({
    required this.lightModeColor,
    required this.darkModeColor,
  });
  Color getColor(bool lightModeOn) =>
      lightModeOn ? lightModeColor : darkModeColor;
}

class SettingsMenuLightTheme {
  SettingsMenuLightTheme._();

  static const panelBackground = ThemeModeColors(
    lightModeColor: Color(0xffffffff),
    darkModeColor: Color(0xff000000),
  );
  static const textColor = ThemeModeColors(
    lightModeColor: Color(0xff000000),
    darkModeColor: Color(0xffffffff),
  );
  static const selectedItemText = ThemeModeColors(
    lightModeColor: Color(0xffffffff),
    darkModeColor: Color(0xff000000),
  );
  static const selectedItemBackground = Color(0xff5cc3c3);
  static const unselectedItemText = ThemeModeColors(
    lightModeColor: Color(0xff141414),
    darkModeColor: Colors.white,
  );
  static const unselectedItemIcon = ThemeModeColors(
    lightModeColor: Color(0xff141414),
    darkModeColor: Colors.white,
  );

  static Duration animDuration = const Duration(milliseconds: 700);
}

class SettingsUserProfileTheme {
  SettingsUserProfileTheme._();

  // Headers Theme Colors
  static const headerBackgroundColor = Color(0xffffffff);
  static const iconBackgroundColor = Color(0xff5cc3c3);
  static const iconTextColor = ThemeModeColors(
    lightModeColor: Color(0xffffffff),
    darkModeColor: Colors.black,
  );
  static const nameTexColor = ThemeModeColors(
    lightModeColor: Color(0xff000000),
    darkModeColor: Colors.white,
  );
  static const emailTextColor = ThemeModeColors(
    lightModeColor: Color(0xff808080),
    darkModeColor: Color(0xffe0e0e0),
  );
  static const editUserPillBorderColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );

  // Last device section
  static const lastDeviceTextColor = ThemeModeColors(
    lightModeColor: Color(0xff000000),
    darkModeColor: Colors.black,
  );
  static const lastDeviceDateColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );
  static const lastDevicePillBackgroundColor = ThemeModeColors(
    lightModeColor: Color(0xffe6e6e6),
    darkModeColor: Color(0xff646464),
  );
  static const lastDevicePillTextColor = ThemeModeColors(
    lightModeColor: Color(0xff000000),
    darkModeColor: Colors.white,
  );

  // Most recent captures same as last device section
}

class SettingsContentTheme {
  SettingsContentTheme._();

  static const contentBackground = ThemeModeColors(
    lightModeColor: Color(0xfff8f8f8),
    darkModeColor: Colors.black,
  );
  static const pillBorder = ThemeModeColors(
    lightModeColor: Colors.black,
    darkModeColor: Colors.white,
  );
  static const appBarTextIconColor = ThemeModeColors(
    lightModeColor: Colors.black,
    darkModeColor: Colors.white,
  );
  // $$$ Edit/Add
  static const primaryTextColor = ThemeModeColors(
      lightModeColor: Colors.black, darkModeColor: Colors.white);
  static const secondaryTextColor = ThemeModeColors(
      lightModeColor: Colors.black54, darkModeColor: Colors.white54);

  // static Color securityColor = Color(0xff646464);
  // static Color securityDropDownBackground = Color(0xf0f0f0);
  // static Color securityBorderColor = Color(0xffcbcbcb);
  // static Color hintTextColor = Color(0xffaaaaaa);
  // static Color optionTextColor = Color(0xff646464);
  // static Color optionsBackground = Color(0xfff8f8f8);
  // static Color optionsBorder = Color(0xffe3e3e3);
  // static Color cancelButtonBorderColor = Color(0xff646464);
  // static Color cancelButtonTextColor = Color(0xff646464);
  // static Color doneButtonTextColor = Color(0xffffffff);
  // static Color doneButtonBackgroundColor = Color(0xff646464);
  // $$$ Cancel Done Edit Colors
  static const cancelBorderColor = ThemeModeColors(
      lightModeColor: Color(0xff646464), darkModeColor: Colors.white);
  static const cancelTextColor = ThemeModeColors(
      lightModeColor: Color(0xff646464), darkModeColor: Colors.white);

  static const doneBorderColor = ThemeModeColors(
      lightModeColor: Color(0xff646464), darkModeColor: Colors.white);
  static const doneTextColor = ThemeModeColors(
      lightModeColor: Color(0xff646464), darkModeColor: Colors.white);
}

class SettingsDetailsTheme {
  SettingsDetailsTheme._();

  static const primaryTextColor = ThemeModeColors(
    lightModeColor: Colors.black,
    darkModeColor: Colors.white,
  );
  static const secondaryTextColor = ThemeModeColors(
    lightModeColor: Colors.black54,
    darkModeColor: Colors.white54,
  );
}

class SettingsDateTheme {
  SettingsDateTheme._();
  static const dateTextColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );
  static const dateTextEnableColor = ThemeModeColors(
    lightModeColor: Colors.black,
    darkModeColor: Colors.white,
  );
  static const dateDisableTextColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );
}

class SettingsSearchResultsTheme {
  SettingsSearchResultsTheme._();
  // filter search bar
  static const searchIcon = ThemeModeColors(
    lightModeColor: Color(0xff808080),
    darkModeColor: Color(0xff202020),
  );
  static const searchHintText = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xff202020),
  );
  static const searchBackground = ThemeModeColors(
    lightModeColor: Color(0xffffffff),
    darkModeColor: Colors.black,
  );
  // filter field
  static const searchFilterFieldsBackground = ThemeModeColors(
    lightModeColor: Color(0xffcbcbcb),
    darkModeColor: Colors.black26,
  );
  static const searchFilterFieldTextColor = ThemeModeColors(
    lightModeColor: Color(0xff464646),
    darkModeColor: Colors.grey,
  );

  static const evenResultBackground = ThemeModeColors(
    lightModeColor: Color(0xffeeeeee),
    darkModeColor: Colors.black38,
  );
  static const oddResultBackground = ThemeModeColors(
    lightModeColor: Color(0xfff5f5f5),
    darkModeColor: Colors.black87,
  );
  static const firstFieldItemColor = ThemeModeColors(
    lightModeColor: Color(0xff000000),
    darkModeColor: Colors.white,
  );
  static const secondFieldItemColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Colors.grey,
  );
  // search rail
  static const searchRailBackground = ThemeModeColors(
    lightModeColor: Color(0xffcbcbcb),
    darkModeColor: Color(0xff404040),
  );
  static const searchRailIndicator = ThemeModeColors(
    lightModeColor: Color(0xff808080),
    darkModeColor: Color(0xff404040),
  );
}

class Details {
  static const fieldColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Colors.grey,
  );
  static const securityColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Colors.grey,
  );
  static const securityDropDownBackground = ThemeModeColors(
    lightModeColor: Color(0xfff0f0f0),
    darkModeColor: Colors.black,
  );
  static const securityBorderColor = ThemeModeColors(
    lightModeColor: Color(0xffcbcbcb),
    darkModeColor: Colors.black54,
  );
  static const hintTextColor = ThemeModeColors(
    lightModeColor: Color(0xffaaaaaa),
    darkModeColor: Color(0xff404040),
  );
  static const optionTextColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffaaaaaa),
  );
  static const optionsBackground = ThemeModeColors(
    lightModeColor: Color(0xfff8f8f8),
    darkModeColor: Colors.black,
  );
  static const optionsBorder = ThemeModeColors(
    lightModeColor: Color(0xffe3e3e3),
    darkModeColor: Colors.black,
  );
  static const cancelButtonBorderColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );
  static const cancelButtonTextColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );
  static const doneButtonTextColor = ThemeModeColors(
    lightModeColor: Color(0xffffffff),
    darkModeColor: Colors.black,
  );
  static const doneButtonBackgroundColor = ThemeModeColors(
    lightModeColor: Color(0xff646464),
    darkModeColor: Color(0xffe0e0e0),
  );
}

class AuthTheme {
  AuthTheme._();

  static const textButton = ThemeModeColors(
      lightModeColor: Colors.black54, darkModeColor: Colors.white54);
  static const elevatedButtonTheme = AppColor.primary;
  static const ctaTextColor = ThemeModeColors(
      lightModeColor: Colors.black, darkModeColor: Colors.white);
  static const backButtonColor = ThemeModeColors(
      lightModeColor: Colors.black, darkModeColor: Colors.white);
}

class SettingsTheme {
  SettingsTheme._();
  static const ThemeModeColors backgroundColor = ThemeModeColors(
      lightModeColor: Colors.white, darkModeColor: Colors.black);
  static const profilePadding = EdgeInsets.symmetric(
    vertical: 8.0,
    horizontal: 24.0,
  );
  static const contentPadding = EdgeInsets.all(0);

  /// where ever user has input this will be the color for that
  static const userInputColor = ThemeModeColors(
      lightModeColor: Colors.black, darkModeColor: Colors.white);
}
