import 'package:flutter_poke/data/mapper/map_query_result_to_pokemon_remote_entity_list.dart';
import 'package:flutter_poke/data/remote/model/pokemon_remote_entity.dart';
import 'package:flutter_poke/data/repositories/pokemon_repository.dart';
import 'package:flutter_poke/domain/mapper/map_pokemon_remote_entity_to_pokemon_model.dart';
import 'package:flutter_poke/domain/model/PokemonModel.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RemotePokemonRepository extends PokemonRepository {
  final GraphQLClient graphQLClient;
  final MapPokemonRemoteEntityToPokemonModel
      mapPokemonRemoteEntityToPokemonModel;
  final MapQueryResultToPokemonRemoteEntityList
      mapQueryResultToPokemonRemoteEntity;
  String _pokemonsQuery = """    
      query {
        pokemons(first: 10) {
          name
          image
          maxHP
          classification
          resistant
        }
      }
    """;

  RemotePokemonRepository(
    this.graphQLClient,
    this.mapPokemonRemoteEntityToPokemonModel,
    this.mapQueryResultToPokemonRemoteEntity,
  );

  @override
  Future<List<PokemonModel>> loadPokemons() async {
    QueryResult queryResult = await graphQLClient.query(
      QueryOptions(documentNode: gql(_pokemonsQuery)),
    );

    List<PokemonRemoteEntity> remoteEntities =
        mapQueryResultToPokemonRemoteEntity.map(queryResult);
    return mapPokemonRemoteEntityToPokemonModel.mapList(remoteEntities);
  }
}
