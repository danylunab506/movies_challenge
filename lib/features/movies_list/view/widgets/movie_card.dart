import 'package:flutter/material.dart';
import 'package:movies_challenge/features/movies_list/domain/models/movie_light_model.dart';
import 'package:movies_challenge/core/constants/api_constants.dart';
import 'package:movies_challenge/core/router/router_navigation.dart';



class MovieCard extends StatelessWidget {
  final MovieLightModel movie;
  const MovieCard({
    super.key,
    required this.movie
  });

  @override
  Widget build(BuildContext context) {
   return  GestureDetector(
      onTap: () => context.pushMovieDetails(movie.id),
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
                  '${ApiConstants.baseImageUrl}${movie.posterPath}',
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
                  '${movie.voteAverage} %',
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
                      movie.originalTitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      movie.releaseDate,
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
   );
  }
}