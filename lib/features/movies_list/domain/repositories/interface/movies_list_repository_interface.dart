import '../../models/movies_result_model.dart';

abstract class IMoviesListRepository {
  Future<MoviesResultModel?> getPopularMovies({
    required String language,
    required int page,
    required String sortBy,
    bool force,
  });
  Future<MoviesResultModel?> getNowPlayingMovies({
    required String language,
    required int page,
    required String sortBy,
    required int type,
    required String minDate,
    required String maxDate,
    bool force,
  });
}
