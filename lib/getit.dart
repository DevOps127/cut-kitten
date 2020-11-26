import 'package:cute_kitten/providers/cat_provider.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<CatProvider>(CatProvider());
}
