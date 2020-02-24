import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_poke/domain/interactors/load_pokemons.dart';
import './bloc.dart';

class BrowserBloc extends Bloc<BrowserEvent, BrowserState> {

  final LoadPokemons loadPokemons;

  BrowserBloc(this.loadPokemons);

  @override
  BrowserState get initialState => InitialBrowserState();

  @override
  Stream<BrowserState> mapEventToState(
    BrowserEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
