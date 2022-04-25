import 'package:client/app/modules/authentication/bindings/auth_binding.dart';
import 'package:client/app/modules/authentication/bindings/intial_binding.dart';
import 'package:client/app/modules/bootstrap/initial_screen.dart';
import 'package:client/app/modules/dashboard/dashboard_bindings.dart';
import 'package:client/app/modules/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

import '../modules/authentication/log_in_screen.dart';
import 'routes.dart';

class AppScreens {
  AppScreens._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
        name: Routes.INITIAL,
        page: () => InitialScreen(),
        binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => AuthScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardScreen(),
      binding: DashboardBindings(),
    ),
  ];
}