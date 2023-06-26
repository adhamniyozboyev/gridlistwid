import 'package:flutter/material.dart';

void main() {
  runApp(ExpansionWidget());
}

class ExpansionWidget extends StatefulWidget {
  const ExpansionWidget({super.key});

  @override
  State<ExpansionWidget> createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  bool changerIcon = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expansion Tile'),
        ),
        body: ListView(
          children: [
            ExpansionTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('Cristiano Ronaldu '),
              // subtitle: Text('Show his informations arrow icon'),
              children: [
                Column(
                  children: [Image.asset('images/ronaldo.jpeg'), Text('He was born in Portugal')],
                )
              ],
            ),
            ExpansionTile(
              onExpansionChanged: (expand) {
                setState(() {
                  changerIcon = expand;
                });
                ;
              },
              title: Text('Paulo Dybala'),
              trailing: Icon(
                  changerIcon ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              children: [
                Column(
                  children: [
                    Image.asset('images/dybala.jpg'),
                    Text('He was born in Argentina ')
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: Text('Dybala & Ronaldu'),
              children: [
                Column(
                  children: [
                    Image.asset('images/kings.jpg'),
                    Text('They are kings of Juventus')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
