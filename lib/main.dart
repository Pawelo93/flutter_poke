import 'package:flutter/material.dart';
import 'package:flutter_poke/di/bloc_dependencies.dart';
import 'package:flutter_poke/di/injector.dart';
import 'package:flutter_poke/ui/browser/browser_screen.dart';

void main() {
  Injector.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocDependencies(
        child: MyHomePage(),
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
