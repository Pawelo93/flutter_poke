// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void _configurePokemonFeatureFactories() {
    final Container container = Container();
    container.registerFactory((c) => LoadPokemons(c<PokemonRepository>()));
    container.registerFactory<PokemonRepository, LocalPokemonRepository>(
        (c) => LocalPokemonRepository());
    container.registerFactory((c) => PokemonBrowserBloc(c<LoadPokemons>()));
    container.registerFactory((c) => DetailsBloc());
  }
}
