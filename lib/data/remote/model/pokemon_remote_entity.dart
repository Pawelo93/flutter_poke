import 'package:equatable/equatable.dart';

class PokemonRemoteEntity extends Equatable {
  final String name;
  final String image;
  final int maxHP;
  final List<String> resistant;
  final String classification;

  PokemonRemoteEntity({
    this.name,
    this.image,
    this.maxHP,
    this.resistant,
    this.classification,
  });

  factory PokemonRemoteEntity.fromJson(Map<String, dynamic> json) {
    return PokemonRemoteEntity(
      name: json['name'],
      image: json['image'],
      maxHP: json['maxHP'],
      resistant: (json['resistant'] as List).cast<String>(),
      classification: json['classification'],
    );
  }

  @override
  List<Object> get props => [
        name,
        image,
        maxHP,
        resistant,
        classification,
      ];
}
