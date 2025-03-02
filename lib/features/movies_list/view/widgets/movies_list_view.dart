import 'package:flutter/material.dart';
import 'package:movies_challenge/core/localizations/localizations_extension.dart';
import 'package:provider/provider.dart';

import '../providers/movies_list_provider.dart';
import 'movies_list.dart';

class MoviesListView extends StatelessWidget {
  const MoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesListProvider = context.watch<MoviesListProvider>();
    return Column(
        children: [
          _searchTextInput(context, moviesListProvider),
          Flexible(child: const MoviesList())
        ],
    
    );
  }

  Widget _searchTextInput(BuildContext context, MoviesListProvider moviesListProvider){
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: TextField(
        controller: moviesListProvider.searchTextFieldController,
        style: TextStyle(
          color: Colors.grey.shade800,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: moviesListProvider
                  .searchTextFieldController
                  .text
                  .isNotEmpty
              ? GestureDetector(
                  onTap: () => moviesListProvider
                      .searchTextFieldController
                      .text = '',
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                )
              : null,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          hintText: context.l10n.searchMovies,
        ),
      ),
    );
  }


}
