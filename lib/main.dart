import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_water_drop_nav_bar/route.gr.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        LeftSideRoute(),
        MiddleSideRoute(),
        RightSideWrapperRoute(children: [
          RightSideRoute(),
        ]),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final hideBottomNav = tabsRouter.topMatch.meta['hideBottomNav'] == true;
        debugPrint('selectedIndex : ${tabsRouter.activeIndex}');
        return hideBottomNav
            ? const SizedBox.shrink()
            : WaterDropNavBar(
                bottomPadding: 18,
                inactiveIconColor: Colors.black,
                selectedIndex: tabsRouter.activeIndex,
                onItemSelected: (index) => tabsRouter.setActiveIndex(index),
                barItems: [
                  BarItem(
                    filledIcon: Icons.face,
                    outlinedIcon: Icons.face_outlined,
                  ),
                  BarItem(
                    filledIcon: Icons.home,
                    outlinedIcon: Icons.home_outlined,
                  ),
                  BarItem(
                    filledIcon: Icons.settings,
                    outlinedIcon: Icons.settings_outlined,
                  ),
                ],
              );
      },
    );
  }
}
