import 'package:equatable/equatable.dart';

abstract class BrowserState extends Equatable {
  const BrowserState();
}

class InitialBrowserState extends BrowserState {
  @override
  List<Object> get props => [];
}
