import 'package:equatable/equatable.dart';

abstract class PokemonBrowserEvent extends Equatable {
  const PokemonBrowserEvent();
}

class LoadPokemonsEvent extends PokemonBrowserEvent {
  @override
  List<Object> get props => [];
}
