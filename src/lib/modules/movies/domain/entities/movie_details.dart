import 'package:equatable/equatable.dart';
import 'package:movies_app/modules/movies/domain/entities/genre.dart';

class MovieDetails extends Equatable {
  const MovieDetails({
    required this.runtime,
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genres,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });
  final int id;
  final String title;
  final String backdropPath;
  final List<Genres> genres;
  final String overview;
  final double voteAverage;
  final int runtime;
  final String releaseDate;

  @override
  List<Object> get props {
    return [
      id,
      title,
      backdropPath,
      genres,
      overview,
      voteAverage,
      runtime,
      releaseDate,
    ];
  }
}
