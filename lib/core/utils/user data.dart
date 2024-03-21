import 'package:get_it/get_it.dart';


GetIt getIt = GetIt.instance;

void setup(String name){
  getIt.registerSingleton<String>(name);
}
