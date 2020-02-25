import 'package:flutter/material.dart';
import 'package:flutter_poke/ui/details/main_statistics_section.dart';
import 'package:flutter_poke/ui/details/resistance_section.dart';
import 'package:flutter_poke/ui/model/pokemon.dart';

class DetailsScreenArguments {
  final Pokemon pokemon;

  DetailsScreenArguments(this.pokemon);
}

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    DetailsScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MainStatisticsSection(
                name: args.pokemon.name,
                imageUrl: args.pokemon.imageUrl,
                maxHP: args.pokemon.maxHP,
              ),
              ResistancesSection(resistance: args.pokemon.resistance),
            ],
          ),
        ),
      ),
    );
  }
}