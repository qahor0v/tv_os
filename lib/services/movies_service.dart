import 'package:tv_os/domain/movie.dart';

abstract class MoviesService {
  Future<List<Movie>> getMovies();
}
