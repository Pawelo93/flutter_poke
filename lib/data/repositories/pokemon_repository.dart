import 'package:flutter_poke/domain/model/PokemonModel.dart';

abstract class PokemonRepository {
  Future<List<PokemonModel>> loadPokemons();
}