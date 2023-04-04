import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/details/view/news_details_view.dart';

import '../../features/home/view/home_view.dart';

abstract class AppRouter {
  static const kNewsView = '/';
  static const kNewsDetailsView = '/newsDetailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kNewsView,
      builder: (context, state) => const NewsView(),
    ),
    GoRoute(
        path: kNewsDetailsView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const NewsDetailsView(),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          );
        }),
  ]);
}

/*GoRoute(
  path: '/page2',
  pageBuilder: (_, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: Page2(),
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    );
  },
// */