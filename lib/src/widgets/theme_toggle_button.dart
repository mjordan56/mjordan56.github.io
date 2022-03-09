//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The [ThemeToggleButton] widget switches the state of a [ThemeMode]
/// provided between light and dark themes with respect to the current
/// state of the [Theme] being used by the app.
///
/// The widget requires a [StateProvider<ThemeMode>] provider used by
/// the app to track the state of the [ThemeMode]. This widget handles
/// correctly toggling the [Theme] when the current is [ThemeMode.system]
/// by checking the platform [Brightness] setting.
///
/// The [size] of the icon, the [Icon]s used for the dark and light theme
/// have default values that can be overridden.
///
class ThemeToggleButton extends ConsumerWidget {
  final StateProvider<ThemeMode> provider;
  final double size;
  late final Icon darkThemeIcon;
  late final Icon lightThemeIcon;

  ThemeToggleButton({
    Key? key,
    required this.provider,
    this.size = 16.0,
    Icon? darkThemeIcon,
    Icon? lightThemeIcon,
  }) : super(key: key) {
    this.darkThemeIcon = darkThemeIcon ??
        Icon(
          Icons.sunny,
          size: size,
        );
    this.lightThemeIcon = lightThemeIcon ??
        Icon(
          Icons.nightlight_round_outlined,
          size: size,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(provider);

    return IconButton(
      onPressed: () {
        final oldThemeMode = ref.read(provider);
        final bool isDark = oldThemeMode == ThemeMode.dark ||
            (oldThemeMode == ThemeMode.system &&
                MediaQuery.platformBrightnessOf(context) == Brightness.dark);
        ref.read(provider.state).state =
            isDark ? ThemeMode.light : ThemeMode.dark;
      },
      icon: Theme.of(context).brightness == Brightness.dark
          ? darkThemeIcon
          : lightThemeIcon,
    );
  }
}
