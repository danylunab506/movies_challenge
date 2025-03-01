import 'package:flutter/material.dart';
import 'package:movies_challenge/core/localizations/localizations_extension.dart';
import 'package:movies_challenge/core/constants/api_constants.dart';
import 'package:provider/provider.dart';

import '../providers/movie_details_provider.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieDetailsProvider>(
      builder: (_, viewModel, child) {
        if (viewModel.movie == null || viewModel.loadingNotifier.value) {
          return const SizedBox.shrink();
        }

        final movie = viewModel.movie!;

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    '${ApiConstants.baseImageUrl}${movie.posterPath}',
                    width: (MediaQuery.sizeOf(context).width + 32) * 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Wrap(
                spacing: 16.0,
                children: [
                  Text(movie.releaseDate),
                  ...movie.genres.map(
                    (genre) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 6.0,
                        ),
                        const SizedBox(width: 3.0),
                        Text(genre.name),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Text(
                context.l10n.overview,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                movie.overview,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        );
      },
    );
  }
}
