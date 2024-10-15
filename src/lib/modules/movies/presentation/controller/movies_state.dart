import 'package:equatable/equatable.dart';

import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/modules/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {
  const MoviesState({
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedMessage = '',
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
  });

  /// now playing movies state
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  /// popular movies state
  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  /// top rated movies state
  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  @override
  List<Object> get props {
    return [
      nowPlayingMovies,
      nowPlayingState,
      nowPlayingMessage,
      popularMovies,
      popularState,
      popularMessage,
      topRatedMovies,
      topRatedState,
      topRatedMessage,
    ];
  }

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
    );
  }
}
