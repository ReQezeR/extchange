import 'package:extchange/src/bloc/_index.dart';
import 'package:extchange/src/services/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<GoRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<RatesSeriesBloc>()),
        BlocProvider(create: (_) => getIt<RatesTablesBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Extchange',
        routerConfig: router,
      ),
    );
  }
}
