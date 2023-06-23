import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Center(
              child: Container(padding: EdgeInsets.all(16),
                child: Text('${index+1}'),
            decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 4)),
          ));
        }),
      ),
    );
  }
}
