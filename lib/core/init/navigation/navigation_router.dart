

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hlogistic/core/constants/navigation/navigation_constants.dart';
import 'package:hlogistic/feature/screens/costCalculator/view/cost_calculator.dart';
import 'package:hlogistic/feature/screens/plan/view/plan.dart';
import 'package:hlogistic/feature/screens/profit/view/profit.dart';
import 'package:hlogistic/feature/screens/settings/view/settings.dart';
import 'package:hlogistic/feature/screens/statistic/view/statistic.dart';
import 'package:hlogistic/main.dart';



final goRouterProvider = Provider<NavigationGoRouter>((ref) => NavigationGoRouter());


class NavigationGoRouter{

  final GoRouter router = GoRouter(
  initialLocation: NavigationConstats.Cost_Calculator,
  debugLogDiagnostics: false,

  routes: <GoRoute>[
    
    GoRoute(
      path: NavigationConstats.Cost_Calculator,
      builder: (BuildContext context, GoRouterState state) => costCalculator()
    ),
    GoRoute(
      path: NavigationConstats.Plan,
      builder: (BuildContext context, GoRouterState state) => plan()
    ),
    GoRoute(
      path: NavigationConstats.Profit,
      builder: (BuildContext context, GoRouterState state) => profit()
    ),
    GoRoute(
      path: NavigationConstats.Statistic,
      builder: (BuildContext context, GoRouterState state) => statistic()
    ),
    GoRoute(
      path: NavigationConstats.Settings,
      builder: (BuildContext context, GoRouterState state) => settings()
    ),
    
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Error'),
    ),
  )
);


}