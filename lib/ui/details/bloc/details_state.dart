import 'package:equatable/equatable.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();
}

class InitialDetailsState extends DetailsState {
  @override
  List<Object> get props => [];
}
