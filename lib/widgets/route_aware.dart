import 'dart:async';

import 'package:chalked/config/application.dart';
import 'package:chalked/core/auth/utils/auth_flow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class RouteAwareWidget extends StatefulWidget {
  final String route;
  final Widget child;

  RouteAwareWidget(this.route, {@required this.child});

  @override
  State<RouteAwareWidget> createState() => RouteAwareWidgetState();
}

// Implement RouteAware in a widget's state and subscribe it to the RouteObserver.
class RouteAwareWidgetState extends State<RouteAwareWidget> with RouteAware {
  final routeObserver = Application().routeObserver;
  StreamSubscription<User> subscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
    subscription = listenAuthChanges(context, widget.route);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    subscription.cancel();
    super.dispose();
  }

  @override
  // Called when the current route has been pushed.
  void didPush() {
    print('didPush ${widget.route}');
  }

  @override
  // Called when the top route has been popped off, and the current route shows up.
  void didPopNext() {
    print('didPopNext ${widget.route}');
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
