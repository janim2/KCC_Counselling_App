import 'package:go_router/go_router.dart';
import 'package:kcc/src/features/initial/presentation/views/initial_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InitialScreen(),
    ),
    // GoRoute(
    //   path: '/dashboard',
    //   builder: (context, state) => const DashboardScreen(),
    // ),
  ],
);
