import 'package:chalked/config/application.dart';
import 'package:chalked/config/routes/routes.dart';
import 'package:chalked/config/routes/routes_config.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  AppState() {
    final router = FluroRouter();
    RoutesConfig.setupRouter(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MateApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: CoreHandler.getAuthPath('login'),
      onGenerateRoute: Application.router.generator,
    );
  }
}
