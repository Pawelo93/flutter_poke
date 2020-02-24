import 'package:flutter/material.dart';
import 'package:flutter_poke/ui/browser/pokemon_list_item.dart';
import 'package:flutter_poke/ui/details/details_screen.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;

  const PokemonList({Key key, @required this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pokemons.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => _openDetailsScreen(context, pokemons[index]),
        child: PokemonListItem(pokemons[index]),
      ),
    );
  }

  void _openDetailsScreen(BuildContext context, Pokemon pokemon) {
    Navigator.pushNamed(context, DetailsScreen.routeName);
  }
}
