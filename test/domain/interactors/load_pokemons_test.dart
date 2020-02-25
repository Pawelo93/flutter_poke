import 'package:flutter_poke/data/repositories/pokemon_repository.dart';
import 'package:flutter_poke/domain/interactors/load_pokemons.dart';
import 'package:flutter_poke/domain/model/PokemonModel.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class PokemonRepositoryMock extends Mock implements PokemonRepository {}

void main() {
  final PokemonRepository pokemonRepository = PokemonRepositoryMock();
  final LoadPokemons loadPokemons = LoadPokemons(pokemonRepository);
  test('should load pokemons', () async {
    List<PokemonModel> pokemonModels = [
      PokemonModel('name', 'image', 120, [], 'class')
    ];
    List<Pokemon> pokemons = [Pokemon('name', 'image', 120, [], 'class')];
    when(pokemonRepository.loadPokemons())
        .thenAnswer((_) async => pokemonModels);

    expect(await loadPokemons.execute(), pokemons);
  });
}
