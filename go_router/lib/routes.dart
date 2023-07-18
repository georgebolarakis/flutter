//GoRouter list of GoRoutes
//GoRoute --> Screen
import 'package:go_router/go_router.dart';

import 'screens/home_screen.dart';
import 'screens/screen_one.dart';
import 'screens/screen_two.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/screens/home_screen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/screens/screen_one',
      builder: (context, state) => const ScreenOne(),
    ),
    GoRoute(
      path: '/screens/screen_two',
      builder: (context, state) => const ScreenTwo(),
    ),
  ],
);

GoRouter createRouter() {
  return _router;
}
