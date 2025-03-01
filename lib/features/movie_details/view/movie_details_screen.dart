import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/movie_details_provider.dart';
import 'widgets/movie_details_view.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    super.key,
    required this.movieId,
  });

  final String movieId;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieDetailsProvider()..init(movieId: movieId),
      child: _MovieDetailsScreen(),
    );
  }
}

class _MovieDetailsScreen extends StatelessWidget {
  const _MovieDetailsScreen();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieDetailsProvider>();
    final originalTitle = viewModel.movie?.originalTitle ?? '';
    final releaseYear = viewModel.movie?.releaseYear ?? '';
    final title =
        '$originalTitle ${releaseYear.isNotEmpty ? '($releaseYear)' : ''}';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<MovieDetailsProvider>(
            builder: (_, viewModel, __) => Text(title),
          ),
        ),
        body: MovieDetailsView(),
        bottomSheet: ValueListenableBuilder(
          valueListenable: viewModel.loadingNotifier,
          builder: (_, value, __) =>
              value ? CircularProgressIndicator() : SizedBox.shrink(),
        ),
      ),
    );
  }
}
