import 'package:flutter/material.dart';
import 'package:movies_app/modules/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/modules/movies/data/repository/movies_respository.dart';
import 'package:movies_app/modules/movies/domain/entities/movie.dart';
import 'package:movies_app/modules/movies/domain/repository/base_movies_repositoy.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_now_playing_movies_usease.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  List<Movie> movies = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    BaseMoviesRepository baseMoviesRepository =
        MoviesRepository(baseMovieRemoteDataSource);
    final result =
        await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
    result.fold((l) {}, (r) {
      movies = r;
    });
    debugPrint(movies.toString());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
