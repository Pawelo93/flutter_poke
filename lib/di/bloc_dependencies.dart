import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_poke/di/injector.dart';
import 'package:flutter_poke/ui/browser/bloc/bloc.dart';

class BlocDependencies extends StatelessWidget {
  final Widget child;

  const BlocDependencies({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonBrowserBloc>(
          create: (_) => Injector.resolve<PokemonBrowserBloc>(),
        ),
      ],
      child: child,
    );
  }
}
