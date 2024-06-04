import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final di = GetIt.instance..allowReassignment = true;

@InjectableInit(
  initializerName: 'initialPresentationLayer',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => di.initialPresentationLayer();
