class _AuthPaths {
  final _prefix = '/auth';
  get login => '$_prefix/login';
}

class _CorePaths {
  final auth = _AuthPaths();
}

class AppPaths {
  static final root = '/';
  static final core = _CorePaths();

  static final dashboard = '/dashboard';
}
