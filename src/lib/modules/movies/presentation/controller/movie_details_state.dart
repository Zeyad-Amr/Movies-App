import 'package:equatable/equatable.dart';

import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/modules/movies/domain/entities/movie_details.dart';
import 'package:movies_app/modules/movies/domain/entities/recommendation.dart';

class MovieDetailsState extends Equatable {
  /// movie details state
  final MovieDetails? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;

  /// recommendation state
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationsMessage;

  const MovieDetailsState({
    this.movieDetailsMessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.movieDetails,
    this.movieDetailsState = RequestState.loading,
    this.recommendationsMessage = '',
  });

  @override
  List<Object?> get props {
    return [
      movieDetails,
      movieDetailsState,
      movieDetailsMessage,
      recommendation,
      recommendationState,
      recommendationsMessage,
    ];
  }

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationsMessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationsMessage:
          recommendationsMessage ?? this.recommendationsMessage,
    );
  }
}
