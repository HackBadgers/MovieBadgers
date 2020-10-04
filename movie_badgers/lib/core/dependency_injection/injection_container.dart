import 'package:get_it/get_it.dart';
import 'package:moviebadgers/core/dependency_injection/dependency_injection.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {

  await movieListInjector(serviceLocator);

}