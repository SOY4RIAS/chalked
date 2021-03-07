part of './routes.dart';

final auth = Application().auth;
final router = Application().router;

class CoreHandler {
  static final root = Handler(
    handlerFunc: (context, parameters) {
      auth.authStateChanges().listen((user) {
        if (user != null) {
          router.navigateTo(context, '/dashboard');

          return;
        }

        router.navigateTo(context, '/auth/login');
      });

      return RootScreen();
    },
  );

  static final login = Handler(
    handlerFunc: (context, parameters) => LoginScreen(),
  );
}
