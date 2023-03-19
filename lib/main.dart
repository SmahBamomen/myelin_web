import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelin_web/features/landing_page/view/screen/landing_screen.dart';
import 'package:myelin_web/localization/locale_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: const Locale('ar', 'AR'),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),

      title: 'Myelin | مايلين',
      home: LandingScreen(),
    );
  }
}
