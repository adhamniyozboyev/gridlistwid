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
                Image.network(
                    'https://akns-images.eonline.com/eol_images/Entire_Site/201909/rs_634x1024-190109152450-634x1024-cristianoronaldo-gj-1-9-19.jpg?fit=around%7C634:1024&output-quality=90&crop=634:1024;center,top')
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
              trailing: Icon(changerIcon
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down),
              children: [
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiB2AgLrvtSE4Nz84ZU_DFdpGHnA5JWG8-3w&usqp=CAU')
              ],
            ),
            ExpansionTile(title: Text('Dybala & Ronaldu'),children: [Image.network('https://pbs.twimg.com/media/E1N9TuuXIAoZ3aE.jpg')],)
          ],
        ),
      ),
    );
  }
}
