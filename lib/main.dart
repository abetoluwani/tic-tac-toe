import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/app/theme/theme.dart';
import 'app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        splitScreenMode: true,
        builder: (context, _) {
          return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          initialBinding: SplashscreenBinding(),
          getPages: AppPages.routes,
          darkTheme: AppTheme.darkTheme,
          theme: AppTheme.theme,
        );
        });
  }
}
