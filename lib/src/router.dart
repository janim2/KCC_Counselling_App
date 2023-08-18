import 'package:go_router/go_router.dart';
import 'package:kcc/src/features/counsellors/presentation/views/counsellor_details.dart';
import 'package:kcc/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:kcc/src/features/faq/presentation/views/faq_details.dart';
import 'package:kcc/src/features/initial/presentation/views/initial_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InitialScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/counsellor_details/:name',
      builder: (context, state) => CounsellorDetailsScreen(
        name: state.params['name'],
      ),
    ),
    GoRoute(
      path: '/faq_details/:faqName',
      builder: (context, state) => FAQDetailsScreen(
        faqName: state.params['faqName'],
      ),
    ),
  ],
);
