import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FireBaseService extends GetxService {
  FirebaseApp _firebaseApp;
  FirebaseAuth _firebaseAuth;

  Future<FireBaseService> init() async {
    _firebaseApp = await Firebase.initializeApp();
    _firebaseAuth = FirebaseAuth.instance;
    return this;
  }

  FirebaseApp get firebaseApp => _firebaseApp;
  FirebaseAuth get firebaseAuth => _firebaseAuth;
}
