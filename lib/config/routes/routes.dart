import 'package:chalked/config/application.dart';
import 'package:chalked/core/auth/login/screens/login_screen.dart';
import 'package:chalked/core/init/screens/root_screen.dart';
import 'package:fluro/fluro.dart';
import 'app_paths.dart';
part './routes_handler.dart';

void defineRoutes(FluroRouter router) {
  router.define(AppPaths.root, handler: CoreHandler.root);
  router.define(AppPaths.core.auth.login, handler: CoreHandler.login);
}
