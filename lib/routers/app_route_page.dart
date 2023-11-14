import 'package:food_app/routers/app_route_name.dart';
import 'package:get/get.dart';

import '../pages/home/home_binding.dart';
import '../pages/home/home_view.dart';
import '../pages/root/root_binding.dart';
import '../pages/root/root_view.dart';

class AppRoutePage {
  static final routes = [
    GetPage(
        name: AppRouteName.home,
        page: () => const HomeView(),
        binding: HomeBinding()
    ),
    GetPage(
        name: AppRouteName.root,
        page: () => const RootView(),
        binding: RootBinding()
    ),
  ];
}
