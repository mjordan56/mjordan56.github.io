import 'package:shiny_object/model/about_data.dart';
import 'package:shiny_object/model/event_data.dart';
import 'package:shiny_object/model/member_data.dart';

class DataManager {
  DataManager() {
    initialize();
  }

  final AboutData _aboutData = AboutData();
  AboutData get aboutData => _aboutData;

  final EventData _eventData = EventData();

  final MemberData _memberData = MemberData();

  void initialize() {}
}
