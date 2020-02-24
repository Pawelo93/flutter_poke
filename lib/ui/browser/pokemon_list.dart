import 'package:flutter/material.dart';
import 'file:///D:/Flutter_exercises/flutter_poke/lib/ui/browser/pokemon_list_item.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class PokemonList extends StatelessWidget {

  final List<Pokemon> pokemons;

  const PokemonList({Key key, @required this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pokemons.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => PokemonListItem(pokemons[index]),
    );
  }
}
