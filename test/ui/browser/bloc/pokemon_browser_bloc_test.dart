import 'package:flutter_poke/domain/interactors/load_pokemons.dart';
import 'package:flutter_poke/ui/browser/bloc/bloc.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoadPokemonsMock extends Mock implements LoadPokemons {}

void main() {
  final LoadPokemonsMock loadPokemonsMock = LoadPokemonsMock();

  test('should emit loadInProgress then success', () {
    final bloc = PokemonBrowserBloc(loadPokemonsMock);
    final List<Pokemon> pokemons = [Pokemon('name', 'image', 113, [], 'class')];
    when(loadPokemonsMock.execute()).thenAnswer((_) async => pokemons);
    bloc.loadPokemonsEvent();
    expectLater(
      bloc,
      emitsInOrder([
        PokemonsLoadInProgress(),
        PokemonsLoadSuccess(pokemons),
      ]),
    );
  });
}
