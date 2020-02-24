import 'package:equatable/equatable.dart';

class PokemonRemoteEntity extends Equatable {
  final String name;
  final String image;

  PokemonRemoteEntity({this.name, this.image});

  factory PokemonRemoteEntity.fromJson(Map<String, dynamic> json) {
    return PokemonRemoteEntity(
      name: json['name'],
      image: json['image'],
    );
  }

  @override
  List<Object> get props => [];
}