import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/modules/movies/domain/entities/movie.dart';
import 'package:movies_app/modules/movies/domain/repository/base_movies_repositoy.dart';

class GetPopularMoviesUseCase implements BaseUseCase<List<Movie>, NoParameters> {
  GetPopularMoviesUseCase(this.baseMoviesRepository);
  final BaseMoviesRepository baseMoviesRepository;

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters noParameters) async {
    return await baseMoviesRepository.getPopluarMovies();
  }
}
