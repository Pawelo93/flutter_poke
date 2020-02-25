import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_poke/domain/interactors/load_pokemons.dart';
import 'package:flutter_poke/ui/browser/bloc/bloc.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class PokemonBrowserBloc extends Bloc<PokemonBrowserEvent, PokemonBrowserState> {

  final LoadPokemons loadPokemons;

  PokemonBrowserBloc(this.loadPokemons) {
    loadPokemonsEvent();
  }

  @override
  PokemonBrowserState get initialState => PokemonsLoadInProgress();

  @override
  Stream<PokemonBrowserState> mapEventToState(
    PokemonBrowserEvent event,
  ) async* {
    if(event is LoadPokemonsEvent) {
      yield PokemonsLoadInProgress();
      List<Pokemon> pokemons = await loadPokemons.execute();
      yield PokemonsLoadSuccess(pokemons);
    }
  }

  loadPokemonsEvent() {
    add(LoadPokemonsEvent());
  }
}
