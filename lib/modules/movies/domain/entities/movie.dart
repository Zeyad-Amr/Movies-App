import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backDropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final double releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backDropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object> get props {
    return [
      id,
      title,
      backDropPath,
      genreIds,
      overview,
      voteAverage,
      releaseDate,
    ];
  }
}
