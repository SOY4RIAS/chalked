import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluro/fluro.dart';

class Application {
  static final Application _instance = Application._();

  Application._();

  factory Application() {
    return _instance;
  }

  init({FluroRouter router, FirebaseAuth auth, FirebaseApp firebaseApp}) {
    if (router != null) _instance._router = router;

    if (auth != null) _instance._auth = auth;

    if (firebaseApp != null) _instance._fireApp = firebaseApp;
  }

  FluroRouter _router;
  FirebaseAuth _auth;
  FirebaseApp _fireApp;

  FluroRouter get router => _instance._router;
  FirebaseAuth get auth => _instance._auth;
  FirebaseApp get fireApp => _instance._fireApp;
}
