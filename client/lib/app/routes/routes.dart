abstract class Routes{
  Routes._();
  static const INITIAL = _PATHS.INITIAL;
  static const LOGIN = _PATHS.LOGIN;
  static const DASHBOARD = _PATHS.DASHBOARD;
}

abstract class _PATHS {
  static const INITIAL = '/initial';
  static const LOGIN = '/login';
  static const DASHBOARD = '/dashboard';
}