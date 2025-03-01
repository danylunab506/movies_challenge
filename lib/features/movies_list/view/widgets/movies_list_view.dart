import 'package:flutter/material.dart';
import 'package:movies_challenge/core/localizations/localizations_extension.dart';
import 'package:movies_challenge/core/constants/api_constants.dart';
import 'package:movies_challenge/core/router/router_navigation.dart';
import 'package:provider/provider.dart';

import '../providers/movies_list_provider.dart';

class MoviesListView extends StatelessWidget {
  const MoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesListProvider>(builder: (_, viewModel, child) {
      if (viewModel.loadingNotifier.value) return const SizedBox.shrink();

      if (viewModel.movies.isEmpty) {
        return Center(
          child: Text(context.l10n.noMoviesAvailable),
        );
      }

      final movies = viewModel.movies;
      return ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: movies.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.pushMovieDetails(movies[index].id),
          child: Card(
            clipBehavior: Clip.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                // Image
                Container(
                  constraints: BoxConstraints(minHeight: 500.0),
                  margin: const EdgeInsets.only(bottom: 90.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.network(
                      '${ApiConstants.baseImageUrl}${movies[index].posterPath}',
                    ),
                  ),
                ),
                // Rating
                Positioned(
                  left: 10,
                  bottom: 78,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${movies[index].voteAverage} %',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Title and Date
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movies[index].originalTitle,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          movies[index].releaseDate,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
