import 'package:flutter/material.dart';
import 'package:shiny_object_affliction/locator.dart';
import 'package:shiny_object_affliction/model/data_manager.dart';
import 'package:shiny_object_affliction/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // final TextTheme textTheme = TextTheme(bodyText1: )
  @override
  Widget build(BuildContext context) {
    final myThemeData = ThemeData(
      brightness: Brightness.light,
      backgroundColor: Color(0xff222222),
      primaryColor: Color(0xff1e88e5),
      scaffoldBackgroundColor: Colors.black,
      canvasColor: Colors.white,
      accentColor: Color(0xff1e88e5),
    );
    return Provider(
      create: (_) => DataManager(),
      child: MaterialApp(
        title: 'Shiny Object Affliction',
        theme: myThemeData,
        // theme: ThemeData(
        //     primarySwatch: Colors.grey,
        //     textTheme: Theme.of(context).textTheme.apply(
        //           fontFamily: 'Lato',
        //         )),
        home: LayoutTemplate(),
      ),
    );
  }
}
