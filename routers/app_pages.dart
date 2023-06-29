import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:proxy_demo/pages/home_page.dart';
import 'package:proxy_demo/pages/notFound.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Table;
  static const home = AppRoutes.Home;
  static final unknownRoute =
      GetPage(name: AppRoutes.NotFound, page: () => const NotFoundPage());
  static final routes = [
    GetPage(name: AppRoutes.Home, page: () => const HomePage(), children: []),
  ];
}
