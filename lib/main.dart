import 'package:flutter/material.dart';
import 'package:flutter_poke/di/bloc_dependencies.dart';
import 'package:flutter_poke/di/injector.dart';
import 'package:flutter_poke/ui/browser/browser_screen.dart';
import 'package:flutter_poke/ui/details/details_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Injector.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocDependencies(
      child: MaterialApp(
        title: 'Pokemons',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: BrowserScreen.routeName,
        routes: {
          BrowserScreen.routeName: (context) => BrowserScreen(),
          DetailsScreen.routeName: (context) => DetailsScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemons'),
      ),
      body: BrowserScreen(),
    );
  }
}
