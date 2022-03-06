//
// Copyright (c) 2022 Quiverware LLC
//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiny_object_affliction/locator.dart';
import 'package:shiny_object_affliction/model/data_manager.dart';
import 'package:shiny_object_affliction/src/providers/providers.dart';
import 'package:shiny_object_affliction/src/ui/theme/app_theme.dart';
import 'package:shiny_object_affliction/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart' as oldp;

void main() {
  setupLocator();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  // final TextTheme textTheme = TextTheme(bodyText1: )
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return oldp.Provider(
      create: (_) => DataManager(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shiny Object Affliction',
        themeMode: themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        // theme: ThemeData(
        //     primarySwatch: Colors.grey,
        //     textTheme: Theme.of(context).textTheme.apply(
        //           fontFamily: 'Lato',
        //         )),
        home: const LayoutTemplate(),
      ),
    );
  }
}
