import 'package:get_it/get_it.dart';
import 'package:movies_app/modules/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/modules/movies/data/repository/movies_respository.dart';
import 'package:movies_app/modules/movies/domain/repository/base_movies_repositoy.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_now_playing_movies_usease.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/modules/movies/presentation/controller/movie_details_bloc.dart';
import 'package:movies_app/modules/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // movie bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    /// Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
