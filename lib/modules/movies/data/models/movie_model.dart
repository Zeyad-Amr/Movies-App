import 'package:movies_app/modules/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backDropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        backDropPath: json["back_drop_path"],
        genreIds: List<int>.from(json["genreIds"].map((e) => e)),
        overview: json["overview"],
        voteAverage: json["vote_average"],
        releaseDate: json["release_date"],
      );
}
