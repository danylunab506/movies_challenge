import 'package:flutter/material.dart' show BuildContext;
import 'package:go_router/go_router.dart';

import '../../features/index.dart';
import 'route_names.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) => const NotFoundScreen(),
  routes: [
    GoRoute(
      path: '/$home',
      builder: (BuildContext context, GoRouterState state) {
        return const MoviesListScreen();
      },
    ),
    GoRoute(
      name: moviesList,
      path: '/$moviesList',
      builder: (BuildContext context, GoRouterState state) {
        return const MoviesListScreen();
      },
    ),
    GoRoute(
      name: movieDetails,
      path: '/$movieDetails',
      builder: (BuildContext context, GoRouterState state) {
        final movieId = state.extra as String;
        return MovieDetailsScreen(movieId: movieId.toString());
      },
    ),
  ],
);
