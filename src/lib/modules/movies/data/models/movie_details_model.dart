import 'package:movies_app/modules/movies/data/models/genres_model.dart';
import 'package:movies_app/modules/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genres,
    required super.overview,
    required super.runtime,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      genres: List<GenresModel>.from(
        (json["genres"] as List).map(
          (e) => GenresModel.fromJson(e),
        ),
      ),
      overview: json["overview"],
      runtime: json["runtime"],
      voteAverage: json["vote_average"].toDouble(),
      releaseDate: json["release_date"],
    );
  }
}
