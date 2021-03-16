import 'package:chalked/core/app/app_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:chalked/config/application.dart';
import 'package:chalked/config/routes/app_paths.dart';
import 'package:chalked/config/routes/routes_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  @override
  Widget build(context, watch) {
    final application = Application();
    final router = application.router;
    final routerObserver = application.routeObserver;
    final appState = watch(appProvider);

    return MaterialApp(
      title: 'MateApp',
      debugShowCheckedModeBanner: false,
      theme: appState.theme,
      initialRoute: AppPaths.root,
      onGenerateRoute: router.generator,
      navigatorObservers: [routerObserver],
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

  return ProviderScope(child: App());
}
