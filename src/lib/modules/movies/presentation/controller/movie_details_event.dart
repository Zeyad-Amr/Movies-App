part of 'movie_details_bloc.dart';

abstract class MovieDetailsEvent extends Equatable {
  const MovieDetailsEvent();
}

class GetMovieDetailsEvent extends MovieDetailsEvent {
  const GetMovieDetailsEvent(this.id);
  final int id;

  @override
  List<Object> get props => [id];
}

class GetMovieRecommentationEvent extends MovieDetailsEvent {
  const GetMovieRecommentationEvent(this.id);
  final int id;

  @override
  List<Object> get props => [id];
}
