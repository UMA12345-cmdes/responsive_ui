import 'package:get/get.dart';

import '../modules/HomeDtails/bindings/home_dtails_binding.dart';
import '../modules/HomeDtails/views/home_dtails_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_DTAILS,
      page: () => const HomeDtailsView(),
      binding: HomeDtailsBinding(),
    ),
  ];
}
