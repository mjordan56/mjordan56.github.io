import 'package:shiny_object_affliction/model/about_data.dart';

class DataManager {
  DataManager() {
    initialize();
  }

  final AboutData _aboutData = AboutData();
  AboutData get aboutData => _aboutData;

  void initialize() {}
}
