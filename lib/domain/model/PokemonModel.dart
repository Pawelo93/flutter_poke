import 'package:equatable/equatable.dart';

class PokemonModel extends Equatable {
  final String name;
  final String image;

  PokemonModel(this.name, this.image);

  @override
  List<Object> get props => [name, image];
}