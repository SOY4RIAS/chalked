import 'package:chalked/config/application.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dashboard'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Application().auth.signOut();
        },
        icon: Icon(Icons.login_outlined),
        label: Text('Logout'),
      ),
    );
  }
}
