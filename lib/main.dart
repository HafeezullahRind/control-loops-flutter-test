import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/core/utils/app_routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          defaultTransition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 250),
          getPages: AppRoutes.pages,
          initialRoute: AppRoutes.navigation,
          builder: (context, child) {
            return SafeArea(bottom: true, top: false, child: child!);
          },
        );
      },
    );
  }
}
