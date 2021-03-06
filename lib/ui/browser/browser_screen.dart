import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_poke/ui/browser/bloc/bloc.dart';
import 'package:flutter_poke/ui/browser/pokemon_list.dart';

class BrowserScreen extends StatelessWidget {
  static String routeName = '/browser';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemons'),
      ),
      body: BlocBuilder<PokemonBrowserBloc, PokemonBrowserState>(
          builder: (context, state) {
        if (state is PokemonsLoadInProgress) {
          return _loading();
        } else if (state is PokemonsLoadSuccess) {
          return PokemonList(pokemons: state.pokemons);
        } else
          return Text('Error');
      }),
    );
  }

  Widget _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
