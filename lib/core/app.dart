import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:chalked/config/application.dart';
import 'package:chalked/config/routes/app_paths.dart';
import 'package:chalked/config/routes/routes_config.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Application().router;

    return MaterialApp(
      title: 'MateApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: AppPaths.root,
      onGenerateRoute: router.generator,
    );
  }
}

Future<Widget> initApp() async {
  final application = Application();
  final router = FluroRouter();
  RoutesConfig.setupRouter(router);

  final fireApp = await Firebase.initializeApp();

  application.init(
    router: router,
    auth: FirebaseAuth.instance,
    firebaseApp: fireApp,
  );

  return App();
}
