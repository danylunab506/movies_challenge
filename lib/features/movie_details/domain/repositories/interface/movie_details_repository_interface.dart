import '../../models/movie_details_model.dart';

abstract class IMovieDetailsRepository {
  Future<MovieDetailsModel?> getMovie({required String movieId});
}
