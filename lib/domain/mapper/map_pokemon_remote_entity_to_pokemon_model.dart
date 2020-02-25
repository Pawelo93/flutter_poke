import 'package:flutter_poke/data/remote/model/pokemon_remote_entity.dart';
import 'package:flutter_poke/domain/model/PokemonModel.dart';

class MapPokemonRemoteEntityToPokemonModel {
  PokemonModel map(PokemonRemoteEntity entity) {
    return PokemonModel(
      entity.name,
      entity.image,
      entity.maxHP,
      entity.resistant,
      entity.classification,
    );
  }

  List<PokemonModel> mapList(List<PokemonRemoteEntity> entities) {
    return entities.map((entity) => map(entity)).toList();
  }
}
