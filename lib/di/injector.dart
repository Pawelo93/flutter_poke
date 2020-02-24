import 'package:flutter_poke/data/local/LocalPokemonRepository.dart';
import 'package:flutter_poke/data/repositories/pokemon_repository.dart';
import 'package:flutter_poke/domain/interactors/load_pokemons.dart';
import 'package:flutter_poke/ui/browser/bloc/bloc.dart';
import 'package:flutter_poke/ui/details/bloc/bloc.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  static Container container;

  static void setup() {
    container = Container();
    _$Injector()._configure();
  }

  static final resolve = container.resolve;

  void _configure() {
    _configurePokemonFeatureFactories();
  }

  @Register.factory(LoadPokemons)
  @Register.factory(PokemonRepository, from: LocalPokemonRepository)
  @Register.factory(BrowserBloc)
  @Register.factory(DetailsBloc)
  void _configurePokemonFeatureFactories();
}