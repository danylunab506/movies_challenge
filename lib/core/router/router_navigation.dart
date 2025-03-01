import 'package:flutter/material.dart' show BuildContext;
import 'package:go_router/go_router.dart';

import 'route_names.dart';

extension RouterNavigation on BuildContext {
  pushMoviesLists() => goNamed(moviesList);

  pushMovieDetails(String movieId) => pushNamed(
    movieDetails,
    extra: movieId,
  );
}
