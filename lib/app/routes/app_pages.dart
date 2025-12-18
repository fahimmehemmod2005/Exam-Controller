import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER_PROFILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
      binding: UserProfileBinding(),
    ),
  ];
}
