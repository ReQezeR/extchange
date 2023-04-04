import 'package:extchange/src/constants/routes.dart';
import 'package:extchange/src/pages/detail/detail_page.dart';
import 'package:extchange/src/pages/home/home_page.dart';
import 'package:extchange/src/pages/table/table_page.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RouterInjectionModule {
  @singleton
  GoRouter get router => GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: Routes.kHome,
            name: 'home',
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                path: Routes.kSettings,
                name: 'settings',
                builder: (context, state) => const HomePage(), //const SettingsPage(),
              ),
              GoRoute(
                path: Routes.kDetail,
                name: 'details',
                builder: (context, state) => DetailPage(currency: state.params['currency']!),
                routes: [
                  GoRoute(
                    path: Routes.kTable,
                    name: 'table',
                    builder: (context, state) => TablePage(name: state.extra! as String, currency: state.params['currency']!),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
