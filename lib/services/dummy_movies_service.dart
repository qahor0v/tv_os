import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:tv_os/domain/movie.dart';
import 'package:tv_os/domain/movies_list.dart';
import 'package:tv_os/services/movies_service.dart';

class DummyMoviesService implements MoviesService {
  @override
  Future<List<Movie>> getMovies() async {
    return MoviesList.fromJson(await rootBundle
            .loadString('assets/service.json')
            .then((movies) => json.decode(movies)))
        .movies;
  }
}
