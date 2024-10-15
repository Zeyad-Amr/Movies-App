import 'package:equatable/equatable.dart';

class Recommendation extends Equatable {
  const Recommendation({
    required this.id,
    this.backdropPath,
  });
  final String? backdropPath;
  final int id;

  @override
  List<Object?> get props => [backdropPath, id];
}
