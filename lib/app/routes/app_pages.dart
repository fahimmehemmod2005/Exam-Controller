import 'package:exam_controller/app/modules/user_profile/views/widget/change_password_dialog.dart';
import 'package:exam_controller/app/modules/user_profile/views/widget/edit_profile_dialog_box.dart';
import 'package:exam_controller/app/modules/user_profile/views/widget/forgot_password_dialog.dart';
import 'package:exam_controller/app/modules/user_profile/views/widget/set_new_password.dart';
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
    GetPage(
      name: _Paths.CHANGEPASS,
      page: () => const ChangePassowrdDialog(),
    ),
    GetPage(
      name: _Paths.EDITPASS,
      page: () => const EdiProfileDialogBox(),
    ),
    GetPage(
      name: _Paths.FORGOTPASS,
      page: () => const ForgotPasswordDialog(),
    ), GetPage(
      name: _Paths.SETPASS,
      page: () => const SetNewPasswrodDialog(),
    ),
  ];
}
