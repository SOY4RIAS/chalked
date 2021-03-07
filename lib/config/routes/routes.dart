import 'package:chalked/core/auth/login/screens/login_screen.dart';
import 'package:chalked/core/init/screens/root_screen.dart';
import 'package:fluro/fluro.dart';

part './routes_handler.dart';

void defineRoutes(FluroRouter router) {
  // Core Routes

  router.define(CoreHandler.rootPath, handler: CoreHandler.root);

  router.define(
    CoreHandler.getAuthPath('login'),
    handler: CoreHandler.login,
  );
}
