// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i7;

import 'left_side_screen.dart' as _i2;
import 'main.dart' as _i1;
import 'middle_side_screen.dart' as _i3;
import 'right_side_detail_screen.dart' as _i6;
import 'right_side_screen.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LeftSideRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LeftSideScreen());
    },
    MiddleSideRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MiddleSideScreen());
    },
    RightSideWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    RightSideRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RightSideScreen());
    },
    RightSideDetailRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RightSideDetailScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/', children: [
          _i4.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'middle',
              fullMatch: true),
          _i4.RouteConfig(LeftSideRoute.name,
              path: 'left', parent: HomeRoute.name),
          _i4.RouteConfig(MiddleSideRoute.name,
              path: 'middle', parent: HomeRoute.name),
          _i4.RouteConfig(RightSideWrapperRoute.name,
              path: 'right',
              parent: HomeRoute.name,
              children: [
                _i4.RouteConfig(RightSideRoute.name,
                    path: '', parent: RightSideWrapperRoute.name),
                _i4.RouteConfig(RightSideDetailRoute.name,
                    path: 'detail',
                    parent: RightSideWrapperRoute.name,
                    meta: <String, dynamic>{'hideBottomNav': true})
              ])
        ]),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.LeftSideScreen]
class LeftSideRoute extends _i4.PageRouteInfo<void> {
  const LeftSideRoute() : super(LeftSideRoute.name, path: 'left');

  static const String name = 'LeftSideRoute';
}

/// generated route for
/// [_i3.MiddleSideScreen]
class MiddleSideRoute extends _i4.PageRouteInfo<void> {
  const MiddleSideRoute() : super(MiddleSideRoute.name, path: 'middle');

  static const String name = 'MiddleSideRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class RightSideWrapperRoute extends _i4.PageRouteInfo<void> {
  const RightSideWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(RightSideWrapperRoute.name,
            path: 'right', initialChildren: children);

  static const String name = 'RightSideWrapperRoute';
}

/// generated route for
/// [_i5.RightSideScreen]
class RightSideRoute extends _i4.PageRouteInfo<void> {
  const RightSideRoute() : super(RightSideRoute.name, path: '');

  static const String name = 'RightSideRoute';
}

/// generated route for
/// [_i6.RightSideDetailScreen]
class RightSideDetailRoute extends _i4.PageRouteInfo<void> {
  const RightSideDetailRoute()
      : super(RightSideDetailRoute.name, path: 'detail');

  static const String name = 'RightSideDetailRoute';
}
