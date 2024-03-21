import 'package:fcai/features/auth%20screen/presentation/views/login%20page.dart';
import 'package:fcai/features/home%20screen/presentation/views/home%20page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'admin fetaures/data entry/presentation/views/data entry page.dart';
import 'features/done screen/presentation/views/done page.dart';
import 'features/splash screen/presentation/views/splash page.dart';
import 'firebase_options.dart';
import 'locale/locale settings.dart';
import 'locale/locale.dart';
import 'screens/first screen.dart';
import 'screens/result screen.dart';
import 'theme/theme services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeService().mode,
      translations: MyLocal(),
      home: const SplashPage(),
    );
  }
}
