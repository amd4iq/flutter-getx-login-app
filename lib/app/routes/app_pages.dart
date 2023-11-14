import 'package:get/get.dart';

import '../config/middleware/auth_middleware.dart';
import '../config/middleware/first_launch_middleware.dart';
import '../modules/authentication/sign_in/bindings/sign_in_binding.dart';
import '../modules/authentication/sign_in/views/sign_in_view.dart';
import '../modules/authentication/sign_up/bindings/sign_up_binding.dart';
import '../modules/authentication/sign_up/views/sign_up_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
      binding: UserProfileBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
      middlewares: [FirstLaunchMiddleware()],
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
