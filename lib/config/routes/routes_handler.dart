part of './routes.dart';

class CoreHandler {
  static final paths = {
    'auth': {
      'login': {
        'path': '/auth/login',
        'handler': Handler(handlerFunc: (context, parameters) => LoginScreen())
      },
    }
  };

  static getAuthHandler(String module) =>
      CoreHandler.paths['auth'][module]['handler'];

  static getAuthPath(String module) =>
      CoreHandler.paths['auth'][module]['path'];
}
