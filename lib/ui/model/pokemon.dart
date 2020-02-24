import 'package:equatable/equatable.dart';

class Pokemon extends Equatable {
  final String name;
  final String imageUrl;

  Pokemon(this.name, this.imageUrl);

  @override
  List<Object> get props => [name, imageUrl];
}