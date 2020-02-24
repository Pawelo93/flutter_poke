import 'package:flutter_poke/data/remote/model/pokemon_remote_entity.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MapQueryResultToPokemonRemoteEntityList {
  List<PokemonRemoteEntity> map(QueryResult queryResult) {
    var data = queryResult.data;
    List pokemons = data['pokemons'];
    return pokemons
        .map((pokemon) => PokemonRemoteEntity.fromJson(pokemon))
        .toList();
  }
}
