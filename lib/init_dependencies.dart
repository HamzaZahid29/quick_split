import 'package:get_it/get_it.dart';
import 'package:quicksplit/controllers/data_provider.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initTestingDataProvider();
}

void _initTestingDataProvider() {
  serviceLocator.registerFactory<DataProvider>(() => DataProvider());
}
