import 'package:flutter/material.dart';

class ResistancesSection extends StatelessWidget {
  final List<String> resistance;

  const ResistancesSection({Key key, this.resistance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 36.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width / 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Resistance:',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              for (String resist in resistance)
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(resist),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
