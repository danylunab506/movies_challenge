import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movies_challenge/global_widgets/alerts/app_alert.dart';
import 'package:movies_challenge/core/localizations/localizations_extension.dart';

import '../providers/movies_list_provider.dart';
import 'movie_card.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesListProvider>(
      builder: (_, moviesListProvider, child) {

        WidgetsBinding.instance.addPostFrameCallback((_) {
        if(moviesListProvider.errorMessage.isNotEmpty){
          moviesListProvider.errorMessage = '';
          showErrorAlert(
            context, 
            moviesListProvider.errorMessage, 
            (){},
          );
        }
      });

      if (!moviesListProvider.loadingStatus.isLoading && moviesListProvider.moviesList.isEmpty) {
        return Center(
          child: Text(context.l10n.noMoviesAvailable),
        );
      }

      return ListView.builder(
        controller: moviesListProvider.scrollController,
        padding: const EdgeInsets.all(12.0),
        itemCount: moviesListProvider.moviesList.length,
        itemBuilder: (context, index) => MovieCard(
          movie: moviesListProvider.moviesList[index],
        )
      );
    });
  }
}