part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const USER_PROFILE = _Paths.USER_PROFILE;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const USER_PROFILE = '/user-profile';
}
