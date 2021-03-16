import 'package:chalked/config/theme/theme_config.dart';
import 'package:chalked/core/app/app_provider.dart';
import 'package:chalked/core/auth/utils/auth_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton.icon(
          onPressed: () => signInWithGoogle(),
          icon: Icon(Icons.account_circle_rounded),
          label: Text('Iniciar con google'),
        ),
      ),
    );
  }
}
