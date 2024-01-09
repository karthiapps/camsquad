import 'package:camsquad/screens/initial/splash_screen.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


var kDebugMode = true;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CAMSQUAD',
      navigatorKey: Get.key,
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.rightToLeft,
      navigatorObservers: [GetObserver()],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
