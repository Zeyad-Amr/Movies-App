import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/modules/movies/domain/entities/movie_details.dart';
import 'package:movies_app/modules/movies/domain/repository/base_movies_repositoy.dart';

class GetMovieDetailsUseCase
    implements BaseUseCase<MovieDetails, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, MovieDetails>> call(MovieDetailsParameters parameter) {
    return baseMoviesRepository.getMovieDetails(parameter);
  }
}

class MovieDetailsParameters extends Equatable {
  final int id;

  const MovieDetailsParameters(this.id);

  @override
  List<Object> get props => [id];
}
