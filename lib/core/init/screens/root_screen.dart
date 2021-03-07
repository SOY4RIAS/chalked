import 'package:chalked/config/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spinkit = SpinKitDoubleBounce(
      color: Colors.black38,
      size: 100,
    );

    return Scaffold(
      body: spinkit,
    );
  }
}
