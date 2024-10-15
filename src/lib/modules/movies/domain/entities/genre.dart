import 'package:equatable/equatable.dart';

class Genres extends Equatable {
  const Genres({
    required this.id,
    required this.name,
  });
  final int id;
  final String name;

  @override
  List<Object> get props => [id, name];
}
