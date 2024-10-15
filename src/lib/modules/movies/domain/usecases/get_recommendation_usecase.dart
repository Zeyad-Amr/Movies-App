import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/useCase/base_usecase.dart';
import 'package:movies_app/modules/movies/domain/entities/recommendation.dart';
import 'package:movies_app/modules/movies/domain/repository/base_movies_repositoy.dart';

class GetRecommendationUseCase extends BaseUseCase<List<Recommendation>, RecommendationParameters> {
  GetRecommendationUseCase(this.baseMoviesRepository);
  final BaseMoviesRepository baseMoviesRepository;
  @override
  Future<Either<Failure, List<Recommendation>>> call(RecommendationParameters parameter) {
    return baseMoviesRepository.getRecommentation(parameter);
  }
}

class RecommendationParameters extends Equatable {
  const RecommendationParameters(this.id);
  final int id;

  @override
  List<Object> get props => [id];
}
