import 'package:chalked/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await runApp(
    GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      title: 'Application',
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
