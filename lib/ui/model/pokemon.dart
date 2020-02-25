import 'package:equatable/equatable.dart';

class Pokemon extends Equatable {
  final String name;
  final String imageUrl;
  final int maxHP;
  final List<String> resistance;
  final String classification;

  Pokemon(
    this.name,
    this.imageUrl,
    this.maxHP,
    this.resistance,
    this.classification,
  );

  @override
  List<Object> get props => [
        name,
        imageUrl,
        maxHP,
        resistance,
        classification,
      ];
}
