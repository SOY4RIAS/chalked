part of './routes.dart';

class CoreHandler {
  static final paths = {
    'auth': {
      'login': '/auth/login',
    }
  };

  static final rootPath = '/';
  static final root = Handler(
    handlerFunc: (context, parameters) => RootScreen(),
  );

  static final login = Handler(
    handlerFunc: (context, parameters) => LoginScreen(),
  );

  static getAuthPath(String module) => CoreHandler.paths['auth'][module];
}
