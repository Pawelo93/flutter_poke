import 'package:flutter_poke/data/repositories/pokemon_repository.dart';
import 'package:flutter_poke/domain/model/PokemonModel.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class LoadPokemons {
  final PokemonRepository pokemonRepository;

  LoadPokemons(this.pokemonRepository);

  Future<List<Pokemon>> execute() {
    return pokemonRepository.loadPokemons().then(
          (pokemonModels) => pokemonModels
              .map((pokemonModel) => _mapToPokemons(pokemonModel))
              .toList(),
        );
  }

  Pokemon _mapToPokemons(PokemonModel pokemonModel) {
    return Pokemon(
      pokemonModel.name,
      pokemonModel.image,
      pokemonModel.maxHP,
      pokemonModel.resistance,
      pokemonModel.classification,
    );
  }
}
