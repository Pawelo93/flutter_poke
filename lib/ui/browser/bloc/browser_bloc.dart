import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class BrowserBloc extends Bloc<BrowserEvent, BrowserState> {
  @override
  BrowserState get initialState => InitialBrowserState();

  @override
  Stream<BrowserState> mapEventToState(
    BrowserEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
