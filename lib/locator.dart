import 'package:get_it/get_it.dart';
import 'package:shiny_object_affliction/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
