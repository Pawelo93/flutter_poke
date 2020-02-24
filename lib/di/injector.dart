import 'package:flutter_poke/data/local/local_pokemon_repository.dart';
import 'package:flutter_poke/data/mapper/map_query_result_to_pokemon_remote_entity_list.dart';
import 'package:flutter_poke/data/remote/remote_pokemon_repository.dart';
import 'package:flutter_poke/data/repositories/pokemon_repository.dart';
import 'package:flutter_poke/domain/interactors/load_pokemons.dart';
import 'package:flutter_poke/domain/mapper/map_pokemon_remote_entity_to_pokemon_model.dart';
import 'package:flutter_poke/ui/browser/bloc/bloc.dart';
import 'package:flutter_poke/ui/details/bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
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
    container.registerInstance<Link, HttpLink>(HttpLink(
      uri: 'https://graphql-pokemon.now.sh/',
    ));
    container.registerInstance<Cache, InMemoryCache>(InMemoryCache());
    container.registerFactory((c) =>
        GraphQLClient(link: c.resolve<Link>(), cache: c.resolve<Cache>()));
    _configurePokemonFeatureFactories();
  }

  @Register.factory(LoadPokemons)
  @Register.factory(PokemonRepository, from: RemotePokemonRepository)
  @Register.factory(PokemonBrowserBloc)
  @Register.factory(DetailsBloc)
  @Register.factory(MapPokemonRemoteEntityToPokemonModel)
  @Register.factory(MapQueryResultToPokemonRemoteEntityList)
  void _configurePokemonFeatureFactories();
}
