import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sekolah/services/location_service.dart';

import 'locator.config.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() {
  $initGetIt(locator);
  locator.registerLazySingleton(() => LocationService());
}
