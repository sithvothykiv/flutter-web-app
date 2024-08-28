import 'package:get_it/get_it.dart';
import 'package:infinity_web_app/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
