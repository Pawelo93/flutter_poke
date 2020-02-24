import 'package:flutter/material.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  PokemonListItem(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(pokemon.name),
      ),
    );
  }
}
