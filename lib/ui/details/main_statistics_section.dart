import 'package:flutter/material.dart';

class MainStatisticsSection extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int maxHP;

  const MainStatisticsSection({Key key, this.name, this.imageUrl, this.maxHP})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Hero(
          tag: name,
          child: Image.network(
            imageUrl,
            scale: 1.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Text(
            name,
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            'maxHP: $maxHP',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
