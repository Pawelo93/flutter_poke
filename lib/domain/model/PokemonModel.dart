import 'package:equatable/equatable.dart';

class PokemonModel extends Equatable {
  final String name;
  final String image;
  final int maxHP;
  final List<String> resistance;
  final String classification;

  PokemonModel(
    this.name,
    this.image,
    this.maxHP,
    this.resistance,
    this.classification,
  );

  @override
  List<Object> get props => [
        name,
        image,
        maxHP,
        resistance,
        classification,
      ];
}
