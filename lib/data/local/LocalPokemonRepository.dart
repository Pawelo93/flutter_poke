import 'package:flutter_poke/data/repositories/pokemon_repository.dart';
import 'package:flutter_poke/domain/model/PokemonModel.dart';

class LocalPokemonRepository extends PokemonRepository {
  @override
  Future<List<PokemonModel>> loadPokemons() {
    return Future.value([
      PokemonModel(
        'Bulbasaur',
        "https://img.pokemondb.net/artwork/bulbasaur.jpg",
      ),
    ]);
  }
}
