import 'package:equatable/equatable.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

abstract class PokemonBrowserState extends Equatable {
  const PokemonBrowserState();
}

class PokemonsLoadInProgress extends PokemonBrowserState {
  @override
  List<Object> get props => [];
}

class PokemonsLoadSuccess extends PokemonBrowserState {

  final List<Pokemon> pokemons;

  PokemonsLoadSuccess(this.pokemons);

  @override
  List<Object> get props => [pokemons];
}

class PokemonsLoadFailure extends PokemonBrowserState {
  @override
  List<Object> get props => [];
}