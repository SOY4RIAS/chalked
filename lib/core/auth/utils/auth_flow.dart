import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:chalked/config/application.dart';
import 'package:chalked/config/routes/app_paths.dart';

final _auth = Application().auth;
final _router = Application().router;

final protectedRoutes = Set<String>()
  ..addAll(
    [
      AppPaths.dashboard,
    ],
  );

final publicRoutes = Set<String>()
  ..addAll(
    [
      AppPaths.core.auth.login,
      AppPaths.root,
    ],
  );

StreamSubscription<User> listenAuthChanges(BuildContext context, String route) {
  return _auth.authStateChanges().listen((user) {
    if (user != null) {
      if (!protectedRoutes.contains(route)) {
        _router.navigateTo(
          context,
          AppPaths.dashboard,
          replace: true,
          transition: TransitionType.fadeIn,
        );
      }

      return;
    }

    if (route != AppPaths.core.auth.login) {
      _router.navigateTo(
        context,
        AppPaths.core.auth.login,
        replace: true,
        transition: TransitionType.fadeIn,
      );
    }
  });
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  // Create a new credential
  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Once signed in, return the UserCredential
  return await _auth.signInWithCredential(credential);
}
