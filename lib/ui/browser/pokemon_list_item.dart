import 'package:flutter/material.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  PokemonListItem(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: pokemon.name,
                child: Image.network(
                  pokemon.imageUrl,
                  scale: 3,
                ),
              ),
            ),
            Text(
              pokemon.name,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
