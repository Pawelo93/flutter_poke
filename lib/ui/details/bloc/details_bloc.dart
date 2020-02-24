import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  @override
  DetailsState get initialState => InitialDetailsState();

  @override
  Stream<DetailsState> mapEventToState(
    DetailsEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
