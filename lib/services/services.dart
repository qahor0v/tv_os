import 'package:tv_os/services/dummy_movies_service.dart';
import 'package:tv_os/services/movies_service.dart';

MoviesService getMoviesService() {
  return DummyMoviesService();
}
