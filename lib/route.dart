import 'package:auto_route/auto_route.dart';
import 'package:test_water_drop_nav_bar/left_side_screen.dart';
import 'package:test_water_drop_nav_bar/main.dart';
import 'package:test_water_drop_nav_bar/middle_side_screen.dart';
import 'package:test_water_drop_nav_bar/right_side_detail_screen.dart';
import 'package:test_water_drop_nav_bar/right_side_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomeScreen,
      children: [
        AutoRoute(
          path: 'left',
          page: LeftSideScreen,
        ),
        AutoRoute(
          path: 'middle',
          page: MiddleSideScreen,
          initial: true,
        ),
        AutoRoute(
          path: 'right',
          page: EmptyRouterPage,
          name: 'RightSideWrapperRoute',
          children: [
            AutoRoute(
              path: '',
              page: RightSideScreen,
            ),
            AutoRoute(
              path: 'detail',
              page: RightSideDetailScreen,
              meta: {'hideBottomNav': true},
            ),
          ],
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
