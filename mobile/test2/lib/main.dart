import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('row'),
      ),
      body: MyRow(),
    ),
  ));
}

// stl goi code
class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 100, height: 100, color: Colors.blue,

        ),
        Container(
          width: 100, height: 100, color: Colors.green,
        ),
        Container(
          width: 100, height: 100, color: Colors.red,
        ),
      ],
    );
  }
}



