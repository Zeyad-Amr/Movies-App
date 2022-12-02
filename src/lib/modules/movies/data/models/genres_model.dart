import 'package:movies_app/modules/movies/domain/entities/genre.dart';

class GenresModel extends Genres {
  const GenresModel({required super.id, required super.name});

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(
      id: json["id"],
      name: json["name"],
    );
  }
}
