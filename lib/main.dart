import 'package:flutter/material.dart';
import 'package:shiny_object/locator.dart';
import 'package:shiny_object/model/data_manager.dart';
import 'package:shiny_object/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => DataManager(),
      child: MaterialApp(
        title: 'Shiny Object Affliction',
        theme: ThemeData(
            primarySwatch: Colors.grey,
            textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: 'Roboto',
                )),
        home: LayoutTemplate(),
      ),
    );
  }
}
