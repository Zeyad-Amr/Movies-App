import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/modules/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:movies_app/modules/movies/presentation/controller/movie_details_state.dart';
part 'movie_details_event.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;
  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommentationEvent>(_getRecommendation);
  }

  Future<FutureOr<void>> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(event.id));

    result.fold(
        (l) => emit(state.copyWith(
            movieDetailsState: RequestState.error,
            movieDetailsMessage: l.message)),
        (r) => emit(state.copyWith(
              movieDetailsState: RequestState.loaded,
              movieDetails: r,
            )));
  }

  FutureOr<void> _getRecommendation(GetMovieRecommentationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result =
        await getRecommendationUseCase(RecommendationParameters(event.id));

    result.fold(
        (l) => emit(state.copyWith(
            recommendationState: RequestState.error,
            recommendationsMessage: l.message)),
        (r) => emit(state.copyWith(
              recommendationState: RequestState.loaded,
              recommendation: r,
            )));
  }
}
