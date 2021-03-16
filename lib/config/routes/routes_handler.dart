part of './routes.dart';

final auth = Application().auth;
final router = Application().router;

class CoreHandler {
  static final root = Handler(
    handlerFunc: (context, params) {
      return RouteAwareWidget(AppPaths.root, child: RootScreen());
    },
  );

  static final login = Handler(
    handlerFunc: (context, parameters) =>
        RouteAwareWidget(AppPaths.core.auth.login, child: LoginScreen()),
  );
}

class ModulesHandler {
  static final dashboard = Handler(handlerFunc: (context, params) {
    return RouteAwareWidget(AppPaths.dashboard, child: DashboardScreen());
  });
}
