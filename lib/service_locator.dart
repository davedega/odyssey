import 'package:get_it/get_it.dart';
import 'package:odyssey/service.dart';

final getIt = GetIt.instance;

void registerServices() {
  getIt.registerSingleton<PackageService>(PackageServiceImpl());
}
